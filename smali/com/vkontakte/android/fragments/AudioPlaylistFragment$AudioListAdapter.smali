.class Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AudioPlaylistFragment.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ReorderableListView$Swappable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/AudioPlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;)V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;-><init>(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->access$6(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 363
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->access$6(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 368
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->access$6(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    const-wide/16 v1, -0x1

    .line 370
    :goto_0
    return-wide v1

    .line 369
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->access$6(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioFile;

    .line 370
    .local v0, "file":Lcom/vkontakte/android/AudioFile;
    iget v1, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    int-to-long v1, v1

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    iget v3, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    int-to-long v3, v3

    or-long/2addr v1, v3

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "q"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const v11, 0x7f09006e

    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 380
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-nez v5, :cond_0

    .line 401
    :goto_0
    return-object v4

    .line 382
    :cond_0
    if-nez p2, :cond_4

    .line 383
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v9, 0x7f030024

    invoke-static {v5, v9, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 388
    .local v4, "v":Landroid/view/View;
    :goto_1
    const/4 v0, 0x0

    .line 389
    .local v0, "file":Lcom/vkontakte/android/AudioFile;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->access$6(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "file":Lcom/vkontakte/android/AudioFile;
    check-cast v0, Lcom/vkontakte/android/AudioFile;

    .line 390
    .restart local v0    # "file":Lcom/vkontakte/android/AudioFile;
    const v5, 0x7f09006f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v9, v0, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    const v5, 0x7f09006c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v9, v0, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    sget-object v5, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v5, :cond_5

    sget-object v5, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v5}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/AudioFile;->equals(Lcom/vkontakte/android/AudioFile;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v5}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/AudioFile;->equalsAdded(Lcom/vkontakte/android/AudioFile;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_1
    move v2, v6

    .line 394
    .local v2, "isCurrent":Z
    :goto_2
    sget-object v5, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v9, Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 395
    .local v1, "isCached":Z
    if-eqz v2, :cond_6

    sget-object v5, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v5}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_6

    move v3, v6

    .line 396
    .local v3, "pt":Z
    :goto_3
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->access$7(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v2, :cond_7

    move v5, v7

    :goto_4
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    .line 397
    :cond_2
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v3, :cond_8

    const v9, 0x7f02011f

    :goto_5
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 398
    const v5, 0x7f090070

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v1, :cond_3

    move v8, v7

    :cond_3
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 399
    const v5, 0x7f09006d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v8, "%d:%02d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, v0, Lcom/vkontakte/android/AudioFile;->duration:I

    div-int/lit8 v10, v10, 0x3c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    iget v7, v0, Lcom/vkontakte/android/AudioFile;->duration:I

    rem-int/lit8 v7, v7, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 385
    .end local v0    # "file":Lcom/vkontakte/android/AudioFile;
    .end local v1    # "isCached":Z
    .end local v2    # "isCurrent":Z
    .end local v3    # "pt":Z
    .end local v4    # "v":Landroid/view/View;
    :cond_4
    move-object v4, p2

    .restart local v4    # "v":Landroid/view/View;
    goto/16 :goto_1

    .restart local v0    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_5
    move v2, v7

    .line 393
    goto/16 :goto_2

    .restart local v1    # "isCached":Z
    .restart local v2    # "isCurrent":Z
    :cond_6
    move v3, v7

    .line 395
    goto :goto_3

    .restart local v3    # "pt":Z
    :cond_7
    move v5, v8

    .line 396
    goto :goto_4

    .line 397
    :cond_8
    const v9, 0x7f02011e

    goto :goto_5
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x1

    return v0
.end method

.method public swapItems(II)V
    .locals 3
    .param p1, "first"    # I
    .param p2, "second"    # I

    .prologue
    .line 406
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->access$6(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioFile;

    .line 407
    .local v0, "tmp":Lcom/vkontakte/android/AudioFile;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->access$6(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->access$6(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/AudioFile;

    invoke-virtual {v2, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->access$6(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v1, :cond_0

    .line 410
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1, p1, p2}, Lcom/vkontakte/android/AudioPlayerService;->swapPlaylistItems(II)V

    .line 412
    :cond_0
    return-void
.end method
