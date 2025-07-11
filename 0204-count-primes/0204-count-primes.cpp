class Solution {
public:
    int countPrimes(int n) {
        vector<bool> prime(n, true);
        prime.assign(n, true);
        for (int i = 2; i * i < n; i++)
         for (int j = i * i; j < n; j += i)
          prime[j] = prime[j] and !prime[i];
           int count = 0;
           for (int i = 2; i < n; i++)
            count += prime[i];
             return count;
    }
};