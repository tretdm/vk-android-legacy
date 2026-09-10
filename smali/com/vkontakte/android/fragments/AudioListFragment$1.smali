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

    .line 78
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/AudioListFragment$1;)Lcom/vkontakte/android/fragments/AudioListFragment;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    const-string v12, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 81
    sget-object v12, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v12, :cond_0

    .line 82
    sget-object v12, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v12}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v7

    .line 83
    .local v7, "file":Lcom/vkontakte/android/AudioFile;
    if-eqz v7, :cond_0

    .line 84
    iget-object v12, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v12}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$0(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/AudioFile;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/vkontakte/android/AudioFile;->equals(Lcom/vkontakte/android/AudioFile;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 85
    iget-object v12, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v12}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->notifyDataSetChanged()V

    .line 115
    :goto_0
    iget-object v12, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v12}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$2(Lcom/vkontakte/android/fragments/AudioListFragment;)Landroid/view/View;

    move-result-object v12

    const v13, 0x7f08005d

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    sget-object v13, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v13}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v13

    if-eqz v13, :cond_8

    const v13, 0x7f02010c

    :goto_1
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    .end local v7    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_0
    :goto_2
    return-void

    .line 87
    .restart local v7    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_1
    const/4 v4, -0x1

    .local v4, "animOut":I
    const/4 v3, -0x1

    .line 88
    .local v3, "animIn":I
    const/4 v9, 0x0

    .line 89
    .local v9, "i":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_3
    iget-object v12, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v12}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->getCount()I

    move-result v12

    if-lt v10, v12, :cond_2

    .line 97
    :goto_4
    const/4 v9, 0x0

    .line 98
    const/4 v10, 0x0

    :goto_5
    iget-object v12, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v12}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->getCount()I

    move-result v12

    if-lt v10, v12, :cond_4

    .line 106
    :goto_6
    const/4 v12, -0x1

    if-eq v3, v12, :cond_6

    const/4 v12, -0x1

    if-eq v4, v12, :cond_6

    if-lt v4, v3, :cond_6

    const/4 v8, 0x0

    .line 107
    .local v8, "fwd":Z
    :goto_7
    iget-object v12, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v12}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$2(Lcom/vkontakte/android/fragments/AudioListFragment;)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_7

    .line 108
    iget-object v12, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v12, v7, v8}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$3(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/AudioFile;Z)V

    .line 111
    :goto_8
    iget-object v12, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v12, v7}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$5(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/AudioFile;)V

    .line 112
    iget-object v12, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    const/4 v13, 0x1

    invoke-static {v12, v3, v13}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$6(Lcom/vkontakte/android/fragments/AudioListFragment;IZ)V

    .line 113
    iget-object v12, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    const/4 v13, 0x0

    invoke-static {v12, v4, v13}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$6(Lcom/vkontakte/android/fragments/AudioListFragment;IZ)V

    goto :goto_0

    .line 90
    .end local v8    # "fwd":Z
    :cond_2
    iget-object v12, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v12}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/AudioFile;

    .line 91
    .local v6, "f":Lcom/vkontakte/android/AudioFile;
    if-eqz v6, :cond_3

    iget-object v12, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v12}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$0(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/AudioFile;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/vkontakte/android/AudioFile;->equals(Lcom/vkontakte/android/AudioFile;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 92
    move v4, v9

    .line 93
    goto :goto_4

    .line 95
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 89
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 99
    .end local v6    # "f":Lcom/vkontakte/android/AudioFile;
    :cond_4
    iget-object v12, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v12}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/AudioFile;

    .line 100
    .restart local v6    # "f":Lcom/vkontakte/android/AudioFile;
    if-eqz v6, :cond_5

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/AudioFile;->equals(Lcom/vkontakte/android/AudioFile;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 101
    move v3, v9

    .line 102
    goto :goto_6

    .line 104
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 98
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 106
    .end local v6    # "f":Lcom/vkontakte/android/AudioFile;
    :cond_6
    const/4 v8, 0x1

    goto :goto_7

    .line 110
    .restart local v8    # "fwd":Z
    :cond_7
    iget-object v12, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v12, v7}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$4(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/AudioFile;)V

    goto :goto_8

    .line 115
    .end local v3    # "animIn":I
    .end local v4    # "animOut":I
    .end local v8    # "fwd":Z
    .end local v9    # "i":I
    .end local v10    # "j":I
    :cond_8
    const v13, 0x7f02010d

    goto/16 :goto_1

    .line 118
    .end local v7    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_9
    const-string v12, "com.vkontakte.android.ALBUM_ART_AVAILABLE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 119
    const-string v12, "aid"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 120
    .local v2, "aid":I
    const-string v12, "oid"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 121
    .local v11, "oid":I
    const-string v12, "vk"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Album art available "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v12, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v12, :cond_0

    sget-object v12, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v12}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 123
    sget-object v12, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v12}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v5

    .line 124
    .local v5, "cur":Lcom/vkontakte/android/AudioFile;
    iget v12, v5, Lcom/vkontakte/android/AudioFile;->aid:I

    if-ne v12, v2, :cond_0

    iget v12, v5, Lcom/vkontakte/android/AudioFile;->oid:I

    if-ne v12, v11, :cond_0

    .line 125
    const/4 v12, 0x1

    new-instance v13, Lcom/vkontakte/android/fragments/AudioListFragment$1$1;

    invoke-direct {v13, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$1$1;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment$1;)V

    invoke-static {v2, v11, v12, v13}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->getCoverImage(IIILcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;)V

    goto/16 :goto_2

    .line 147
    .end local v2    # "aid":I
    .end local v5    # "cur":Lcom/vkontakte/android/AudioFile;
    .end local v11    # "oid":I
    :cond_a
    const-string v12, "com.vkontakte.android.AUDIO_FILE_ADDED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 148
    iget-object v12, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v12}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$7(Lcom/vkontakte/android/fragments/AudioListFragment;)I

    move-result v12

    sget v13, Lcom/vkontakte/android/Global;->uid:I

    if-ne v12, v13, :cond_0

    .line 149
    const-string v12, "file"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/AudioFile;

    .line 150
    .local v1, "af":Lcom/vkontakte/android/AudioFile;
    iget-object v12, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v12}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$8(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 151
    iget-object v12, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v12}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$9(Lcom/vkontakte/android/fragments/AudioListFragment;)I

    move-result v12

    if-nez v12, :cond_0

    .line 152
    iget-object v12, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$10(Lcom/vkontakte/android/fragments/AudioListFragment;I)V

    goto/16 :goto_2

    .line 154
    .end local v1    # "af":Lcom/vkontakte/android/AudioFile;
    :cond_b
    const-string v12, "com.vkontakte.android.AUDIO_FILE_DELETED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 155
    iget-object v12, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v12}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$7(Lcom/vkontakte/android/fragments/AudioListFragment;)I

    move-result v12

    sget v13, Lcom/vkontakte/android/Global;->uid:I

    if-ne v12, v13, :cond_0

    .line 156
    const-string v12, "aid"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 157
    .restart local v2    # "aid":I
    iget-object v12, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v12}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$8(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/AudioFile;

    .line 158
    .restart local v7    # "file":Lcom/vkontakte/android/AudioFile;
    iget v13, v7, Lcom/vkontakte/android/AudioFile;->aid:I

    if-ne v13, v2, :cond_c

    .line 159
    iget-object v12, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v12}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$8(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 160
    iget-object v12, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v13, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v13}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$9(Lcom/vkontakte/android/fragments/AudioListFragment;)I

    move-result v13

    invoke-static {v12, v13}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$10(Lcom/vkontakte/android/fragments/AudioListFragment;I)V

    goto/16 :goto_2
.end method
