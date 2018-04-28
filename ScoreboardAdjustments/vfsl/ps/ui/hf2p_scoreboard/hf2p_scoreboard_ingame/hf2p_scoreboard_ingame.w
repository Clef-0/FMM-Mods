sslClass   =   "UiScoreboardIngame"
sslModule   =   "ui.hf2p_scoreboard.hf2p_scoreboard_ingame.hf2p_scoreboard_ingame"
x   =   400
y   =   200
elements   =   {
   PersonalStats   =   {
      sslClass   =   "UiScoreboardPersonalStats"
      sslModule   =   "ui.hf2p_scoreboard.hf2p_scoreboard_logic.hf2p_scoreboard_personal_stats"
      elements   =   {
         gamerTag   =   {
            impl   =   {
               propMapping   =   {
                  tfNumHtml   =   {
                     mapping   =   "tfNum.htmlText"
                     isNoTranslate   =   True
                  }
               }
               __type   =   "ui_widget_impl_gfx"
            }
            bindings   =   {
               tfNumHtml   =   {
                  binding   =   "{name}"
               }
            }
            __type   =   "ui_widget_container"
         }
         kills   =   {
            isBlinkable   =   True
            impl   =   {
               propMapping   =   {
                  tfNum   =   {
                     isNoTranslate   =   True
                  }
               }
               __type   =   "ui_widget_impl_gfx"
            }
            bindings   =   {
               tfNum   =   {
                  binding   =   "{'' + kills}"
               }
            }
            __type   =   "ui_widget_container"
         }
         deaths   =   {
            isBlinkable   =   True
            impl   =   {
               propMapping   =   {
                  tfNum   =   {
                     isNoTranslate   =   True
                  }
               }
               __type   =   "ui_widget_impl_gfx"
            }
            bindings   =   {
               tfNum   =   {
                  binding   =   "{'' + deaths}"
               }
            }
            __type   =   "ui_widget_container"
         }
         assists   =   {
            isBlinkable   =   True
            impl   =   {
               propMapping   =   {
                  tfNum   =   {
                     isNoTranslate   =   True
                  }
               }
               __type   =   "ui_widget_impl_gfx"
            }
            bindings   =   {
               tfNum   =   {
                  binding   =   "{'' + assists}"
               }
            }
            __type   =   "ui_widget_container"
         }
         total   =   {
            isBlinkable   =   True
            impl   =   {
               propMapping   =   {
                  tfNum   =   {
                     isNoTranslate   =   True
                  }
               }
               __type   =   "ui_widget_impl_gfx"
            }
            bindings   =   {
               tfNum   =   {
                  binding   =   "{'' + score}"
               }
            }
            __type   =   "ui_widget_container"
         }
         positionTag   =   {
            isBlinkable   =   True
            impl   =   {
               propMapping   =   {
                  tfNum   =   {
                     isNoTranslate   =   True
                  }
               }
               __type   =   "ui_widget_impl_gfx"
            }
            bindings   =   {
               tfNum   =   {
                  binding   =   "{'' + absolute_place}"
               }
            }
            __type   =   "ui_widget_container"
         }
         rtts_scoreboard_biped   =   {
            x   =   6
            y   =   6
            __type   =   "ui_rtts_container::rtts_scoreboard_biped"
         }
      }
      stateMap   =   {
         startState   =   "Initial"
         states   =   {
            Initial   =   {
            }
            Visible   =   {
            }
         }
      }
      bindings   =   {
         DC   =   {
            binding   =   "{PersonalStats}"
         }
      }
      __type   =   "ui_summary_lib::PersonalStatsContainer"
   }
   heading   =   {
      sslClass   =   "UiScoreboardRoundInfo"
      sslModule   =   "ui.hf2p_scoreboard.hf2p_scoreboard_logic.hf2p_scoreboard_round_info"
      elements   =   {
         teamPositions   =   {
            elements   =   {
               t2name   =   {
                  impl   =   {
                      propMapping   =   {
                            tfNameBlue   =   {
                                mapping   =   "tfNameBlue.htmlText"
                                isNoTranslate   =   True
                            }
                        }
                    __type   =   "ui_widget_impl_gfx"
                    }
                    bindings   =   {
                        tfNameBlue   =   {
                            binding   =   "{GetHeaderOneName()}"
                        }
                    }
                    __type   =   "ui_widget_container"
                }
               t1name   =   {
                  impl   =   {
                      propMapping   =   {
                            tfNameRed   =   {
                                mapping   =   "tfNameRed.htmlText"
                                isNoTranslate   =   True
                            }
                        }
                    __type   =   "ui_widget_impl_gfx"
                    }
                    bindings   =   {
                        tfNameRed   =   {
                            binding   =   "{GetHeaderTwoName()}"
                        }
                    }
                    __type   =   "ui_widget_container"
                }
               t1score   =   {
                  impl   =   {
                      propMapping   =   {
                            tfTeamScoreRed   =   {
                                mapping   =   "tfTeamScoreRed.htmlText"
                                isNoTranslate   =   True
                            }
                      }
                    __type   =   "ui_widget_impl_gfx"
                    }
                    bindings   =   {
                        tfTeamScoreRed   =   {
                            binding   =   "{GetHeaderTwoScore()}"
                        }
                    }
                    __type   =   "ui_widget_container"
                }
               t2score   =   {
                  impl   =   {
                      propMapping   =   {
                            tfTeamScoreBlue   =   {
                                mapping   =   "tfTeamScoreBlue.htmlText"
                                isNoTranslate   =   True
                            }
                      }
                    __type   =   "ui_widget_impl_gfx"
                    }
                    bindings   =   {
                        tfTeamScoreBlue   =   {
                            binding   =   "{GetHeaderOneScore()}"
                        }
                    }
                    __type   =   "ui_widget_container"
                }
               EmblemAttachRed   =   {
                  bindings   =   {
                     pic   =   {
                        binding   =   "{GetFirstIcon()}"
                     }
                  }
                  __type   =   "ui_summary_lib::attachPoint"
               }
               EmblemAttachBlue   =   {
                  bindings   =   {
                     pic   =   {
                        binding   =   "{GetSecondIcon()}"
                     }
                  }
                  __type   =   "ui_summary_lib::attachPoint"
               }
            }
            bindings   =   {
               anim   =   {
                  binding   =   "{GetAnim()}"
               }
               DC   =   {
                  binding   =   "{new: 'ui.hf2p_scoreboard.hf2p_scoreboard_ingame.hf2p_scoreboard_ingame.UiScoreboardTeamsVM'}"
               }
            }
            __type   =   "ui_widget_container"
         }
      }
      impl   =   {
         __type   =   "ui_widget_impl_gfx"
      }
      stateMap   =   {
         startState   =   "Initial"
         states   =   {
            Initial   =   {
            }
            Visible   =   {
            }
         }
      }
      __type   =   "ui_widget_container"
   }
   list   =   {
      animated   =   False
      fixed   =   False
      bindings   =   {
         items   =   {
            binding   =   "{StatList}"
         }
      }
      lir   =   {
         sslClass   =   "UiStatsPlayerLIR"
         sslModule   =   "ui.hf2p_scoreboard.hf2p_scoreboard_logic.hf2p_scoreboard_stats_ingame"
         isBlinkable   =   True
         fixed   =   False
         elements   =   {
            bombClassAttach   =   {
               bindings   =   {
                  pic   =   {
                     binding   =   "{'' + flag_pic_str}"
                  }
               }
               __type   =   "ui_summary_lib::attachPoint"
            }
            EmblemAttach   =   {
               bindings   =   {
                  pic   =   {
                     binding   =   "{GetRankIcon()}"
                  }
               }
               isCentered   =   True
               __type   =   "ui_summary_lib::attachPoint"
            }
            iconCrown   =   {
               bindings   =   {
                  visible   =   {
                     binding   =   "{GetIsPartyLeaderVisible()}"
                  }
               }
               __type   =   "ui_widget_container"
            }
            tfPartyStatusShapeAnim   =   {
               bindings   =   {
                  tfPartyStatusShape   =   {
                     binding   =   "{GetPartyIdx()}"
                  }
                  visible   =   {
                     binding   =   "{GetIsPartyIndicatorVisible()}"
                  }
               }
               __type   =   "ui_summary_lib::tfPartyStatusShapeAnim"
            }
            partyStatusShape   =   {
               bindings   =   {
                  visible   =   {
                     binding   =   "{GetIsPartyIndicatorVisible()}"
                  }
                  frame   =   {
                     binding   =   "{GetPartyIndicatorFrame()}"
                  }
               }
               __type   =   "ui_widget_container"
            }
            scbContainer   =   {
               elements   =   {
                  scbTxtContainer   =   {
                     impl   =   {
                        propMapping   =   {
                           tfWRank   =   {
                              isNoTranslate   =   True
                           }
                           tfKills   =   {
                              isNoTranslate   =   True
                           }
                           tfDeaths   =   {
                              isNoTranslate   =   True
                           }
                           tfAssists   =   {
                              isNoTranslate   =   True
                           }
                           tfScore   =   {
                              isNoTranslate   =   True
                           }
                           tfWScore   =   {
                              isNoTranslate   =   True
                           }
                           tfName   =   {
                              isNoTranslate   =   True
                           }
                           tfTag   =   {
                              isNoTranslate   =   True
                           }
                           tfRankTop   =   {
                              isNoTranslate   =   True
                           }
                           tfRankSt   =   {
                              isNoTranslate   =   True
                           }
                           tfRank   =   {
                              isNoTranslate   =   True
                           }
                        }
                        __type   =   "ui_widget_impl_gfx"
                     }
                     bindings   =   {
                        tfName   =   {
                           binding   =   "{name}"
                        }
                        tfTag   =   {
                           binding   =   "{tag}"
                        }
                        tfKills   =   {
                           binding   =   "{'' + kills}"
                        }
                        tfDeaths   =   {
                           binding   =   "{'' + deaths}"
                        }
                        tfAssists   =   {
                           binding   =   "{'' + assists}"
                        }
                        tfScore   =   {
                           binding   =   "{'' + score}"
                        }
                        tfWScore   =   {
                           binding   =   "{'' + wp}"
                        }
                        tfWRank   =   {
                           binding   =   "{'' + rank}"
                        }
                     }
                     __type   =   "ui_widget_container"
                  }
               }
               bindings   =   {
                  frame   =   {
                     binding   =   "{player_state_anim}"
                  }
               }
               __type   =   "ui_summary_lib::ScbTxtStates"
            }
            color_bg   =   {
               bindings   =   {
                  frame   =   {
                     binding   =   "{color_anim}"
                  }
               }
               __type   =   "ui_widget_container"
            }
         }
         impl   =   {
            __type   =   "ui_widget_impl_gfx_list_item"
         }
         __type   =   "ui_summary_lib::ScoreBoardLIR"
      }
      __type   =   "ui_summary_lib::hf2pScoreList"
   }
}
stateMap   =   {
   startState   =   "Initial"
   states   =   {
      Initial   =   {
         transitionsIn   =   {
            any   =   {
               action   =   {
                  elements   =   {
                     elem0   =   {
                        state   =   "PersonalStats.Initial"
                        __type   =   "ui_widget_action_state"
                     }
                     elem1   =   {
                        state   =   "heading.Initial"
                        __type   =   "ui_widget_action_state"
                     }
                  }
                  __type   =   "ui_widget_action_sequence"
               }
            }
         }
      }
      Visible   =   {
         transitionsIn   =   {
            any   =   {
               action   =   {
                  elements   =   {
                     elem0   =   {
                        state   =   "PersonalStats.Visible"
                        __type   =   "ui_widget_action_state"
                     }
                     elem1   =   {
                        state   =   "heading.Visible"
                        __type   =   "ui_widget_action_state"
                     }
                  }
                  __type   =   "ui_widget_action_sequence"
               }
            }
         }
      }
      PreGameVisible   =   {
      }
      PostGameVisible   =   {
         transitionsIn   =   {
            any   =   {
               action   =   {
                  elements   =   {
                     elem0   =   {
                        state   =   "PersonalStats.Visible"
                        __type   =   "ui_widget_action_state"
                     }
                     elem1   =   {
                        state   =   "heading.Visible"
                        __type   =   "ui_widget_action_state"
                     }
                  }
                  __type   =   "ui_widget_action_sequence"
               }
            }
         }
      }
      BetweenRounds   =   {
      }
   }
}
bindings   =   {
   DC   =   {
      binding   =   "{new: 'ui.hf2p_scoreboard.hf2p_scoreboard_logic.hf2p_scoreboard_stats_ingame.ScoreboardIngameVM'}"
   }
}
layers   =   {
   back   =   {
      offset   =   -10
   }
   mainLayer   =   {
      offset   =   1
   }
}
defLayer   =   "mainLayer"
__type   =   "ui_summary_lib::ScoreboardDMContainer"
