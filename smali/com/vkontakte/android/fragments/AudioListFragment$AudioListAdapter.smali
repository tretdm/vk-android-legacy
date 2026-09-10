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
    .line 854
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;)V
    .locals 0

    .prologue
    .line 854
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V

    return-void
.end method


# virtual methods
.method public getItem(II)Ljava/lang/Object;
    .locals 2
    .param p1, "section"    # I
    .param p2, "position"    # I

    .prologue
    .line 866
    const/4 v0, 0x0

    .line 867
    .local v0, "file":Lcom/vkontakte/android/AudioFile;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$11(Lcom/vkontakte/android/fragments/AudioListFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 868
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$10(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "file":Lcom/vkontakte/android/AudioFile;
    check-cast v0, Lcom/vkontakte/android/AudioFile;

    .line 873
    .restart local v0    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_0
    :goto_0
    return-object v0

    .line 870
    :cond_1
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$12(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "file":Lcom/vkontakte/android/AudioFile;
    check-cast v0, Lcom/vkontakte/android/AudioFile;

    .line 871
    .restart local v0    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$13(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

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
    .line 857
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$11(Lcom/vkontakte/android/fragments/AudioListFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$10(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 861
    :goto_0
    return v0

    .line 859
    :cond_0
    if-nez p1, :cond_1

    .line 860
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$12(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 861
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$13(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 878
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemId(II)J
    .locals 2
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 927
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 922
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
    .line 917
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    const v1, 0x7f08009c

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(IILandroid/view/View;)Landroid/view/View;
    .locals 10
    .param p1, "section"    # I
    .param p2, "position"    # I
    .param p3, "convertView"    # Landroid/view/View;

    .prologue
    .line 884
    if-nez p3, :cond_4

    .line 885
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f030024

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 890
    .local v4, "v":Landroid/view/View;
    :goto_0
    const/4 v0, 0x0

    .line 891
    .local v0, "file":Lcom/vkontakte/android/AudioFile;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$11(Lcom/vkontakte/android/fragments/AudioListFragment;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 892
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$10(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "file":Lcom/vkontakte/android/AudioFile;
    check-cast v0, Lcom/vkontakte/android/AudioFile;

    .line 897
    .restart local v0    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_0
    :goto_1
    const v5, 0x7f09006f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v0, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 898
    const v5, 0x7f09006c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v0, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 900
    sget-object v5, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v5, :cond_7

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

    if-eqz v5, :cond_7

    :cond_1
    const/4 v2, 0x1

    .line 901
    .local v2, "isCurrent":Z
    :goto_2
    sget-object v5, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 902
    .local v1, "isCached":Z
    if-eqz v2, :cond_8

    sget-object v5, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v5}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v3, 0x1

    .line 903
    .local v3, "pt":Z
    :goto_3
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$14(Lcom/vkontakte/android/fragments/AudioListFragment;)Z

    move-result v5

    if-nez v5, :cond_2

    const v5, 0x7f09006e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v2, :cond_9

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 904
    :cond_2
    const v5, 0x7f09006e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v3, :cond_a

    const v6, 0x7f02011f

    :goto_5
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 906
    const v5, 0x7f090070

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v1, :cond_b

    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 907
    const v5, 0x7f09006d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$11(Lcom/vkontakte/android/fragments/AudioListFragment;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    if-ne p1, v5, :cond_c

    const/4 v5, 0x0

    :goto_7
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 908
    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$11(Lcom/vkontakte/android/fragments/AudioListFragment;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    if-ne p1, v5, :cond_3

    .line 909
    const v5, 0x7f09006d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "%d:%02d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v0, Lcom/vkontakte/android/AudioFile;->duration:I

    div-int/lit8 v9, v9, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v9, v0, Lcom/vkontakte/android/AudioFile;->duration:I

    rem-int/lit8 v9, v9, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 912
    :cond_3
    return-object v4

    .line 887
    .end local v0    # "file":Lcom/vkontakte/android/AudioFile;
    .end local v1    # "isCached":Z
    .end local v2    # "isCurrent":Z
    .end local v3    # "pt":Z
    .end local v4    # "v":Landroid/view/View;
    :cond_4
    move-object v4, p3

    .restart local v4    # "v":Landroid/view/View;
    goto/16 :goto_0

    .line 894
    .restart local v0    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_5
    if-nez p1, :cond_6

    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$12(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "file":Lcom/vkontakte/android/AudioFile;
    check-cast v0, Lcom/vkontakte/android/AudioFile;

    .line 895
    .restart local v0    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_6
    const/4 v5, 0x1

    if-ne p1, v5, :cond_0

    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$13(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "file":Lcom/vkontakte/android/AudioFile;
    check-cast v0, Lcom/vkontakte/android/AudioFile;

    .restart local v0    # "file":Lcom/vkontakte/android/AudioFile;
    goto/16 :goto_1

    .line 900
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 902
    .restart local v1    # "isCached":Z
    .restart local v2    # "isCurrent":Z
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 903
    .restart local v3    # "pt":Z
    :cond_9
    const/16 v5, 0x8

    goto/16 :goto_4

    .line 904
    :cond_a
    const v6, 0x7f02011e

    goto/16 :goto_5

    .line 906
    :cond_b
    const/16 v5, 0x8

    goto/16 :goto_6

    .line 907
    :cond_c
    const/16 v5, 0x8

    goto :goto_7
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 932
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$13(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
