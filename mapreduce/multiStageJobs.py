def steps(self):
    return[
        MRStep(mapper = self.mapper_get_ratings,
                reducer = self.reducer_count_ratings),
        MRStep(reducer = self.reducer_sorted_output)
    ]