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
    .line 82
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    const-string v14, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 85
    sget-object v14, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v14, :cond_0

    .line 86
    sget-object v14, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v14}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v7

    .line 87
    .local v7, "file":Lcom/vkontakte/android/AudioFile;
    if-eqz v7, :cond_0

    .line 88
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v14}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$000(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/AudioFile;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/vkontakte/android/AudioFile;->equals(Lcom/vkontakte/android/AudioFile;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 89
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v14}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$100(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    move-result-object v14

    invoke-virtual {v14}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->notifyDataSetChanged()V

    .line 90
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v14}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$200(Lcom/vkontakte/android/fragments/AudioListFragment;)Landroid/view/View;

    move-result-object v14

    const v15, 0x7f08004d

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ViewFlipper;

    .line 91
    .local v13, "vs":Landroid/widget/ViewFlipper;
    invoke-virtual {v13}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v14

    const v15, 0x7f080051

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    sget-object v14, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    iget-boolean v14, v14, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    if-eqz v14, :cond_1

    const/4 v14, 0x0

    :goto_0
    invoke-virtual {v15, v14}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .end local v13    # "vs":Landroid/widget/ViewFlipper;
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v14}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$200(Lcom/vkontakte/android/fragments/AudioListFragment;)Landroid/view/View;

    move-result-object v14

    const v15, 0x7f080053

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    sget-object v15, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v15}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v15

    if-eqz v15, :cond_a

    const v15, 0x7f0200ae

    :goto_2
    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    .end local v7    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_0
    :goto_3
    return-void

    .line 91
    .restart local v7    # "file":Lcom/vkontakte/android/AudioFile;
    .restart local v13    # "vs":Landroid/widget/ViewFlipper;
    :cond_1
    const/16 v14, 0x8

    goto :goto_0

    .line 93
    .end local v13    # "vs":Landroid/widget/ViewFlipper;
    :cond_2
    const/4 v4, -0x1

    .local v4, "animOut":I
    const/4 v3, -0x1

    .line 94
    .local v3, "animIn":I
    const/4 v9, 0x0

    .line 95
    .local v9, "i":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v14}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$100(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    move-result-object v14

    invoke-virtual {v14}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->getCount()I

    move-result v14

    if-ge v11, v14, :cond_3

    .line 96
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v14}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$100(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/AudioFile;

    .line 97
    .local v6, "f":Lcom/vkontakte/android/AudioFile;
    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v14}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$000(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/AudioFile;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/vkontakte/android/AudioFile;->equals(Lcom/vkontakte/android/AudioFile;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 98
    move v4, v9

    .line 103
    .end local v6    # "f":Lcom/vkontakte/android/AudioFile;
    :cond_3
    const/4 v9, 0x0

    .line 104
    const/4 v11, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v14}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$100(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    move-result-object v14

    invoke-virtual {v14}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->getCount()I

    move-result v14

    if-ge v11, v14, :cond_4

    .line 105
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v14}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$100(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/AudioFile;

    .line 106
    .restart local v6    # "f":Lcom/vkontakte/android/AudioFile;
    if-eqz v6, :cond_7

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/AudioFile;->equals(Lcom/vkontakte/android/AudioFile;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 107
    move v3, v9

    .line 112
    .end local v6    # "f":Lcom/vkontakte/android/AudioFile;
    :cond_4
    const/4 v14, -0x1

    if-eq v3, v14, :cond_5

    const/4 v14, -0x1

    if-eq v4, v14, :cond_5

    if-ge v4, v3, :cond_8

    :cond_5
    const/4 v8, 0x1

    .line 113
    .local v8, "fwd":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v14}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$200(Lcom/vkontakte/android/fragments/AudioListFragment;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-nez v14, :cond_9

    .line 114
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v14, v7, v8}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$300(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/AudioFile;Z)V

    .line 117
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v14, v7}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$002(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/AudioFile;)Lcom/vkontakte/android/AudioFile;

    .line 118
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    const/4 v15, 0x1

    invoke-static {v14, v3, v15}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$500(Lcom/vkontakte/android/fragments/AudioListFragment;IZ)V

    .line 119
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    const/4 v15, 0x0

    invoke-static {v14, v4, v15}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$500(Lcom/vkontakte/android/fragments/AudioListFragment;IZ)V

    goto/16 :goto_1

    .line 101
    .end local v8    # "fwd":Z
    .restart local v6    # "f":Lcom/vkontakte/android/AudioFile;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 95
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 110
    :cond_7
    add-int/lit8 v9, v9, 0x1

    .line 104
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 112
    .end local v6    # "f":Lcom/vkontakte/android/AudioFile;
    :cond_8
    const/4 v8, 0x0

    goto :goto_6

    .line 116
    .restart local v8    # "fwd":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v14, v7}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$400(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/AudioFile;)V

    goto :goto_7

    .line 121
    .end local v3    # "animIn":I
    .end local v4    # "animOut":I
    .end local v8    # "fwd":Z
    .end local v9    # "i":I
    .end local v11    # "j":I
    :cond_a
    const v15, 0x7f0200af

    goto/16 :goto_2

    .line 124
    .end local v7    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_b
    const-string v14, "com.vkontakte.android.ALBUM_ART_AVAILABLE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 125
    const-string v14, "aid"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 126
    .local v2, "aid":I
    const-string v14, "oid"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 127
    .local v12, "oid":I
    const-string v14, "vk"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Album art available "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-object v14, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v14, :cond_0

    sget-object v14, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v14}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 129
    sget-object v14, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v14}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v5

    .line 130
    .local v5, "cur":Lcom/vkontakte/android/AudioFile;
    iget v14, v5, Lcom/vkontakte/android/AudioFile;->aid:I

    if-ne v14, v2, :cond_0

    iget v14, v5, Lcom/vkontakte/android/AudioFile;->oid:I

    if-ne v14, v12, :cond_0

    .line 131
    const/4 v14, 0x1

    new-instance v15, Lcom/vkontakte/android/fragments/AudioListFragment$1$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vkontakte/android/fragments/AudioListFragment$1$1;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment$1;)V

    invoke-static {v2, v12, v14, v15}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->getCoverImage(IIILcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;)V

    goto/16 :goto_3

    .line 153
    .end local v2    # "aid":I
    .end local v5    # "cur":Lcom/vkontakte/android/AudioFile;
    .end local v12    # "oid":I
    :cond_c
    const-string v14, "com.vkontakte.android.AUDIO_FILE_ADDED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 154
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v14}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$600(Lcom/vkontakte/android/fragments/AudioListFragment;)I

    move-result v14

    sget v15, Lcom/vkontakte/android/Global;->uid:I

    if-ne v14, v15, :cond_0

    .line 155
    const-string v14, "file"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/AudioFile;

    .line 156
    .local v1, "af":Lcom/vkontakte/android/AudioFile;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v14, v14, Lcom/vkontakte/android/fragments/AudioListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_d

    .line 157
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v14, v14, Lcom/vkontakte/android/fragments/AudioListFragment;->data:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 158
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v14}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$700(Lcom/vkontakte/android/fragments/AudioListFragment;)I

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v14}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$800(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_0

    .line 160
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v14}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$800(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v14}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$100(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    move-result-object v14

    invoke-virtual {v14}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_3

    .line 164
    .end local v1    # "af":Lcom/vkontakte/android/AudioFile;
    :cond_e
    const-string v14, "com.vkontakte.android.AUDIO_FILE_DELETED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 165
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v14}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$600(Lcom/vkontakte/android/fragments/AudioListFragment;)I

    move-result v14

    sget v15, Lcom/vkontakte/android/Global;->uid:I

    if-ne v14, v15, :cond_0

    .line 166
    const-string v14, "aid"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 167
    .restart local v2    # "aid":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v14, v14, Lcom/vkontakte/android/fragments/AudioListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/AudioFile;

    .line 168
    .restart local v7    # "file":Lcom/vkontakte/android/AudioFile;
    iget v14, v7, Lcom/vkontakte/android/AudioFile;->aid:I

    if-ne v14, v2, :cond_f

    .line 169
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v14, v14, Lcom/vkontakte/android/fragments/AudioListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 171
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v14}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$800(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 172
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v14}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$100(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    move-result-object v14

    invoke-virtual {v14}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_3

    .line 177
    .end local v2    # "aid":I
    .end local v7    # "file":Lcom/vkontakte/android/AudioFile;
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_10
    const-string v14, "com.vkontakte.android.SERVICE_STOPPING"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 178
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v14}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$200(Lcom/vkontakte/android/fragments/AudioListFragment;)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 179
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v14}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$100(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    move-result-object v14

    invoke-virtual {v14}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_3
.end method
