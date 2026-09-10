.class public Lcom/vkontakte/android/BoardTopicsActivity$TopicListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BoardTopicsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/BoardTopicsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TopicListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/BoardTopicsActivity;


# direct methods
.method protected constructor <init>(Lcom/vkontakte/android/BoardTopicsActivity;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/vkontakte/android/BoardTopicsActivity$TopicListAdapter;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicsActivity$TopicListAdapter;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-object v0, v0, Lcom/vkontakte/android/BoardTopicsActivity;->topics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 373
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 378
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 383
    if-nez p2, :cond_0

    .line 384
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicsActivity$TopicListAdapter;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    const v3, 0x7f03000f

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 386
    new-instance v2, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-direct {v2}, Lcom/vkontakte/android/ui/HighlightDrawable;-><init>()V

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 387
    invoke-static {p2}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 389
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicsActivity$TopicListAdapter;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-object v2, v2, Lcom/vkontakte/android/BoardTopicsActivity;->topics:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/BoardTopic;

    .line 390
    .local v1, "t":Lcom/vkontakte/android/api/BoardTopic;
    const v2, 0x7f060043

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v1, Lcom/vkontakte/android/api/BoardTopic;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f0a0037

    iget v4, v1, Lcom/vkontakte/android/api/BoardTopic;->numComments:I

    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicsActivity$TopicListAdapter;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    invoke-virtual {v5}, Lcom/vkontakte/android/BoardTopicsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicsActivity$TopicListAdapter;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/BoardTopicsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09017b

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/vkontakte/android/BoardTopicsActivity$TopicListAdapter;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    invoke-virtual {v7}, Lcom/vkontakte/android/BoardTopicsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, v1, Lcom/vkontakte/android/api/BoardTopic;->updated:I

    invoke-static {v7, v8}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "info":Ljava/lang/String;
    iget v2, v1, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_2

    iget v2, v1, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_2

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicsActivity$TopicListAdapter;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/BoardTopicsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09019c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    :cond_1
    :goto_0
    const v2, 0x7f060044

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    return-object p2

    .line 395
    :cond_2
    iget v2, v1, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_3

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicsActivity$TopicListAdapter;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/BoardTopicsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09019b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    goto :goto_0

    :cond_3
    iget v2, v1, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_1

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicsActivity$TopicListAdapter;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/BoardTopicsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09019a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
