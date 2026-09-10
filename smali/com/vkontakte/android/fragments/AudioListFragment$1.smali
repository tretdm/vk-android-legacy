.class Lcom/vkontakte/android/fragments/AudioListFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AudioListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/AudioListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/AudioListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    .line 79
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/AudioListFragment$1;)Lcom/vkontakte/android/fragments/AudioListFragment;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    const-string v13, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 82
    sget-object v13, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v13, :cond_0

    .line 83
    sget-object v13, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v13}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v7

    .line 84
    .local v7, "file":Lcom/vkontakte/android/AudioFile;
    if-eqz v7, :cond_0

    .line 85
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v13}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$0(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/AudioFile;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/vkontakte/android/AudioFile;->equals(Lcom/vkontakte/android/AudioFile;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 86
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v13}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->notifyDataSetChanged()V

    .line 87
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v13}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$2(Lcom/vkontakte/android/fragments/AudioListFragment;)Landroid/view/View;

    move-result-object v13

    const v14, 0x7f090062

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ViewFlipper;

    .line 88
    .local v12, "vs":Landroid/widget/ViewFlipper;
    invoke-virtual {v12}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v13

    const v14, 0x7f090066

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    sget-object v13, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    iget-boolean v13, v13, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    if-eqz v13, :cond_1

    const/4 v13, 0x0

    :goto_0
    invoke-virtual {v14, v13}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .end local v12    # "vs":Landroid/widget/ViewFlipper;
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v13}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$2(Lcom/vkontakte/android/fragments/AudioListFragment;)Landroid/view/View;

    move-result-object v13

    const v14, 0x7f090068

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    sget-object v14, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v14}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v14

    if-eqz v14, :cond_9

    const v14, 0x7f02011b

    :goto_2
    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    .end local v7    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_0
    :goto_3
    return-void

    .line 88
    .restart local v7    # "file":Lcom/vkontakte/android/AudioFile;
    .restart local v12    # "vs":Landroid/widget/ViewFlipper;
    :cond_1
    const/16 v13, 0x8

    goto :goto_0

    .line 90
    .end local v12    # "vs":Landroid/widget/ViewFlipper;
    :cond_2
    const/4 v4, -0x1

    .local v4, "animOut":I
    const/4 v3, -0x1

    .line 91
    .local v3, "animIn":I
    const/4 v9, 0x0

    .line 92
    .local v9, "i":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v13}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->getCount()I

    move-result v13

    if-lt v10, v13, :cond_3

    .line 100
    :goto_5
    const/4 v9, 0x0

    .line 101
    const/4 v10, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v13}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->getCount()I

    move-result v13

    if-lt v10, v13, :cond_5

    .line 109
    :goto_7
    const/4 v13, -0x1

    if-eq v3, v13, :cond_7

    const/4 v13, -0x1

    if-eq v4, v13, :cond_7

    if-lt v4, v3, :cond_7

    const/4 v8, 0x0

    .line 110
    .local v8, "fwd":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v13}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$2(Lcom/vkontakte/android/fragments/AudioListFragment;)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_8

    .line 111
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v13, v7, v8}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$3(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/AudioFile;Z)V

    .line 114
    :goto_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v13, v7}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$5(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/AudioFile;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    const/4 v14, 0x1

    invoke-static {v13, v3, v14}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$6(Lcom/vkontakte/android/fragments/AudioListFragment;IZ)V

    .line 116
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    const/4 v14, 0x0

    invoke-static {v13, v4, v14}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$6(Lcom/vkontakte/android/fragments/AudioListFragment;IZ)V

    goto :goto_1

    .line 93
    .end local v8    # "fwd":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v13}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    move-result-object v13

    invoke-virtual {v13, v10}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/AudioFile;

    .line 94
    .local v6, "f":Lcom/vkontakte/android/AudioFile;
    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v13}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$0(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/AudioFile;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/vkontakte/android/AudioFile;->equals(Lcom/vkontakte/android/AudioFile;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 95
    move v4, v9

    .line 96
    goto :goto_5

    .line 98
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 92
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 102
    .end local v6    # "f":Lcom/vkontakte/android/AudioFile;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v13}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    move-result-object v13

    invoke-virtual {v13, v10}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/AudioFile;

    .line 103
    .restart local v6    # "f":Lcom/vkontakte/android/AudioFile;
    if-eqz v6, :cond_6

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/AudioFile;->equals(Lcom/vkontakte/android/AudioFile;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 104
    move v3, v9

    .line 105
    goto :goto_7

    .line 107
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 101
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    .line 109
    .end local v6    # "f":Lcom/vkontakte/android/AudioFile;
    :cond_7
    const/4 v8, 0x1

    goto :goto_8

    .line 113
    .restart local v8    # "fwd":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v13, v7}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$4(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/AudioFile;)V

    goto :goto_9

    .line 118
    .end local v3    # "animIn":I
    .end local v4    # "animOut":I
    .end local v8    # "fwd":Z
    .end local v9    # "i":I
    .end local v10    # "j":I
    :cond_9
    const v14, 0x7f02011c

    goto/16 :goto_2

    .line 121
    .end local v7    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_a
    const-string v13, "com.vkontakte.android.ALBUM_ART_AVAILABLE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 122
    const-string v13, "aid"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 123
    .local v2, "aid":I
    const-string v13, "oid"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 124
    .local v11, "oid":I
    const-string v13, "vk"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Album art available "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sget-object v13, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v13, :cond_0

    sget-object v13, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v13}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 126
    sget-object v13, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v13}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v5

    .line 127
    .local v5, "cur":Lcom/vkontakte/android/AudioFile;
    iget v13, v5, Lcom/vkontakte/android/AudioFile;->aid:I

    if-ne v13, v2, :cond_0

    iget v13, v5, Lcom/vkontakte/android/AudioFile;->oid:I

    if-ne v13, v11, :cond_0

    .line 128
    const/4 v13, 0x1

    new-instance v14, Lcom/vkontakte/android/fragments/AudioListFragment$1$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vkontakte/android/fragments/AudioListFragment$1$1;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment$1;)V

    invoke-static {v2, v11, v13, v14}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->getCoverImage(IIILcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;)V

    goto/16 :goto_3

    .line 150
    .end local v2    # "aid":I
    .end local v5    # "cur":Lcom/vkontakte/android/AudioFile;
    .end local v11    # "oid":I
    :cond_b
    const-string v13, "com.vkontakte.android.AUDIO_FILE_ADDED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 151
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v13}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$7(Lcom/vkontakte/android/fragments/AudioListFragment;)I

    move-result v13

    sget v14, Lcom/vkontakte/android/Global;->uid:I

    if-ne v13, v14, :cond_0

    .line 152
    const-string v13, "file"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/AudioFile;

    .line 153
    .local v1, "af":Lcom/vkontakte/android/AudioFile;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v13}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$8(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_c

    .line 154
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v13}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$8(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 155
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v13}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$9(Lcom/vkontakte/android/fragments/AudioListFragment;)I

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v13}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$10(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_0

    .line 157
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v13}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$10(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v13}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_3

    .line 161
    .end local v1    # "af":Lcom/vkontakte/android/AudioFile;
    :cond_d
    const-string v13, "com.vkontakte.android.AUDIO_FILE_DELETED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 162
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v13}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$7(Lcom/vkontakte/android/fragments/AudioListFragment;)I

    move-result v13

    sget v14, Lcom/vkontakte/android/Global;->uid:I

    if-ne v13, v14, :cond_0

    .line 163
    const-string v13, "aid"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 164
    .restart local v2    # "aid":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v13}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$8(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/AudioFile;

    .line 165
    .restart local v7    # "file":Lcom/vkontakte/android/AudioFile;
    iget v14, v7, Lcom/vkontakte/android/AudioFile;->aid:I

    if-ne v14, v2, :cond_e

    .line 166
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v13}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$8(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 168
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v13}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$10(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 169
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v13}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_3

    .line 174
    .end local v2    # "aid":I
    .end local v7    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_f
    const-string v13, "com.vkontakte.android.SERVICE_STOPPING"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 175
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v13}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$2(Lcom/vkontakte/android/fragments/AudioListFragment;)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 176
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v13}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_3
.end method
