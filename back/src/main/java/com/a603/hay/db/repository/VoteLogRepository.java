package com.a603.hay.db.repository;

import com.a603.hay.db.entity.User;
import com.a603.hay.db.entity.Vote;
import com.a603.hay.db.entity.VoteItem;
import com.a603.hay.db.entity.VoteLog;
import java.util.List;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VoteLogRepository extends JpaRepository<VoteLog, Long> {

  int countByUserAndVote(User user, Vote vote);

  int countByVoteItem(VoteItem voteItem);

  int countByVote(Vote vote);

  List<VoteLog> findAllByUser(User user, Sort sort);

  int countByUserAndVoteItem(User user, VoteItem voteItem);

  List<VoteLog> findAllByVoteItem(VoteItem voteItem);
}
