.class Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;
.super Lcom/vkontakte/android/ui/MultiSectionAdapter;
.source "AudioListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/AudioListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/AudioListFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V
    .locals 0

    .prologue
    .line 790
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;)V
    .locals 0

    .prologue
    .line 790
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    return-void
.end method


# virtual methods
.method public getItem(II)Ljava/lang/Object;
    .locals 2
    .param p1, "section"    # I
    .param p2, "position"    # I

    .prologue
    .line 802
    const/4 v0, 0x0

    .line 803
    .local v0, "file":Lcom/vkontakte/android/AudioFile;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$11(Lcom/vkontakte/android/fragments/AudioListFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 804
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$12(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "file":Lcom/vkontakte/android/AudioFile;
    check-cast v0, Lcom/vkontakte/android/AudioFile;

    .line 809
    .restart local v0    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_0
    :goto_0
    return-object v0

    .line 806
    :cond_1
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$13(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "file":Lcom/vkontakte/android/AudioFile;
    check-cast v0, Lcom/vkontakte/android/AudioFile;

    .line 807
    .restart local v0    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$14(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "file":Lcom/vkontakte/android/AudioFile;
    check-cast v0, Lcom/vkontakte/android/AudioFile;

    .restart local v0    # "file":Lcom/vkontakte/android/AudioFile;
    goto :goto_0
.end method

.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 793
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$11(Lcom/vkontakte/android/fragments/AudioListFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$12(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 797
    :goto_0
    return v0

    .line 795
    :cond_0
    if-nez p1, :cond_1

    .line 796
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$13(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 797
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$14(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 814
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemId(II)J
    .locals 2
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 859
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$11(Lcom/vkontakte/android/fragments/AudioListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 849
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    const v1, 0x7f060082

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(IILandroid/view/View;)Landroid/view/View;
    .locals 12
    .param p1, "section"    # I
    .param p2, "position"    # I
    .param p3, "convertView"    # Landroid/view/View;

    .prologue
    const v11, 0x7f080063

    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 820
    if-nez p3, :cond_3

    .line 821
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v9, 0x7f030022

    const/4 v10, 0x0

    invoke-static {v5, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 826
    .local v4, "v":Landroid/view/View;
    :goto_0
    const/4 v0, 0x0

    .line 827
    .local v0, "file":Lcom/vkontakte/android/AudioFile;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$11(Lcom/vkontakte/android/fragments/AudioListFragment;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 828
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$12(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "file":Lcom/vkontakte/android/AudioFile;
    check-cast v0, Lcom/vkontakte/android/AudioFile;

    .line 833
    .restart local v0    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_0
    :goto_1
    const v5, 0x7f080064

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v9, v0, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 834
    const v5, 0x7f080061

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v9, v0, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 836
    sget-object v5, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v5, :cond_6

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

    if-eqz v5, :cond_6

    :cond_1
    move v2, v6

    .line 837
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

    .line 838
    .local v1, "isCached":Z
    if-eqz v2, :cond_7

    sget-object v5, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v5}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_7

    move v3, v6

    .line 839
    .local v3, "pt":Z
    :goto_3
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$15(Lcom/vkontakte/android/fragments/AudioListFragment;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v2, :cond_8

    move v5, v7

    :goto_4
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 840
    :cond_2
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v3, :cond_9

    const v6, 0x7f020110

    :goto_5
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 841
    const v5, 0x7f080062

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v3, :cond_a

    sget-object v5, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    iget-boolean v5, v5, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    if-eqz v5, :cond_a

    move v5, v7

    :goto_6
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 842
    const v5, 0x7f080065

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v1, :cond_b

    :goto_7
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 844
    return-object v4

    .line 823
    .end local v0    # "file":Lcom/vkontakte/android/AudioFile;
    .end local v1    # "isCached":Z
    .end local v2    # "isCurrent":Z
    .end local v3    # "pt":Z
    .end local v4    # "v":Landroid/view/View;
    :cond_3
    move-object v4, p3

    .restart local v4    # "v":Landroid/view/View;
    goto/16 :goto_0

    .line 830
    .restart local v0    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_4
    if-nez p1, :cond_5

    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$13(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "file":Lcom/vkontakte/android/AudioFile;
    check-cast v0, Lcom/vkontakte/android/AudioFile;

    .line 831
    .restart local v0    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_5
    if-ne p1, v6, :cond_0

    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$14(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "file":Lcom/vkontakte/android/AudioFile;
    check-cast v0, Lcom/vkontakte/android/AudioFile;

    .restart local v0    # "file":Lcom/vkontakte/android/AudioFile;
    goto/16 :goto_1

    :cond_6
    move v2, v7

    .line 836
    goto/16 :goto_2

    .restart local v1    # "isCached":Z
    .restart local v2    # "isCurrent":Z
    :cond_7
    move v3, v7

    .line 838
    goto :goto_3

    .restart local v3    # "pt":Z
    :cond_8
    move v5, v8

    .line 839
    goto :goto_4

    .line 840
    :cond_9
    const v6, 0x7f02010f

    goto :goto_5

    :cond_a
    move v5, v8

    .line 841
    goto :goto_6

    :cond_b
    move v7, v8

    .line 842
    goto :goto_7
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 864
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
