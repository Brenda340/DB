SELECT QUEST_PPCM_ANAL_EXCLUSION.*
      ,DE_ID
      ,QUEST_PPCM_ANAL_EXCLUSION.AR_ID
      ,INSTANCE_ID
      ,AT_CODE
  FROM C##ELI.QUEST_PPCM_ANAL_RESULT
       INNER JOIN C##ELI.QUEST_PPCM_ANAL_EXCLUSION
           ON (QUEST_PPCM_ANAL_RESULT.AR_ID = QUEST_PPCM_ANAL_EXCLUSION.AR_ID)