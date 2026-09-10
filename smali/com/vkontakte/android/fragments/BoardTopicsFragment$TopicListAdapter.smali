.class public Lcom/vkontakte/android/fragments/BoardTopicsFragment$TopicListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BoardTopicsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/BoardTopicsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TopicListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;


# direct methods
.method protected constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$TopicListAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$TopicListAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->topics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 415
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 420
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "pos"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "group"    # Landroid/view/ViewGroup;

    .prologue
    const v5, 0x7f080087

    .line 425
    if-nez p2, :cond_0

    .line 426
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$TopicListAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f030027

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 428
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$TopicListAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->topics:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/BoardTopic;

    .line 429
    .local v1, "t":Lcom/vkontakte/android/api/BoardTopic;
    const v2, 0x7f080084

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v1, Lcom/vkontakte/android/api/BoardTopic;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    const v2, 0x7f0d0036

    iget v3, v1, Lcom/vkontakte/android/api/BoardTopic;->numComments:I

    iget-object v4, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$TopicListAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "info":Ljava/lang/String;
    iget v2, v1, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_2

    iget v2, v1, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_2

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$TopicListAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06013a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    :cond_1
    :goto_0
    const v2, 0x7f080085

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    const v2, 0x7f080088

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v1, Lcom/vkontakte/android/api/BoardTopic;->updatedBy:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    const v2, 0x7f080089

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v1, Lcom/vkontakte/android/api/BoardTopic;->lastComment:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    const v2, 0x7f08008a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v3, v1, Lcom/vkontakte/android/api/BoardTopic;->updated:I

    iget-object v4, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$TopicListAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$TopicListAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v3, v1, Lcom/vkontakte/android/api/BoardTopic;->updatedBy:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 447
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$TopicListAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v4, v1, Lcom/vkontakte/android/api/BoardTopic;->updatedBy:Lcom/vkontakte/android/UserProfile;

    iget-object v4, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 451
    :goto_1
    return-object p2

    .line 434
    :cond_2
    iget v2, v1, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_3

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$TopicListAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060139

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    goto/16 :goto_0

    :cond_3
    iget v2, v1, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_1

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$TopicListAdapter;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060138

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 449
    :cond_4
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f020247

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
