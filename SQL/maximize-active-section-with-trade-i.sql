class Solution {
public:
    int maxActiveSectionsAfterTrade(string s) {
        string t = "1" + s + "1";
        int n = t.size();
        
        // Build run-length encoding: (char, length)
        vector<pair<char,int>> runs;
        int i = 0;
        while (i < n) {
            int j = i;
            while (j < n && t[j] == t[i]) j++;
            runs.push_back({t[i], j - i});
            i = j;
        }
        
        // Count original ones in s (not augmented)
        int countOnes = 0;
        for (char c : s) if (c == '1') countOnes++;
        
        // For every interior '1' run (not first or last run),
        // it's guaranteed to have a '0' run immediately before and after
        // (since runs alternate and t starts/ends with '1').
        int bestGain = 0;
        for (int k = 1; k + 1 < (int)runs.size(); k++) {
            if (runs[k].first == '1') {
                int gain = runs[k-1].second + runs[k+1].second;
                bestGain = max(bestGain, gain);
            }
        }
        
        return countOnes + bestGain;
    }
};
