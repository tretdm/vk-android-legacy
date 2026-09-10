.class Lcom/vkontakte/android/GroupsView$FriendsAdapter;
.super Lcom/vkontakte/android/ui/MultiSectionAdapter;
.source "GroupsView.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/GroupsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FriendsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/GroupsView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/GroupsView;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/vkontakte/android/GroupsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/GroupsView;Lcom/vkontakte/android/GroupsView$FriendsAdapter;)V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/vkontakte/android/GroupsView$FriendsAdapter;-><init>(Lcom/vkontakte/android/GroupsView;)V

    return-void
.end method


# virtual methods
.method public getItemCount(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 343
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsView;->access$0(Lcom/vkontakte/android/GroupsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/GroupsView$Section;

    iget-object v0, v0, Lcom/vkontakte/android/GroupsView$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(II)J
    .locals 2
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 348
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 358
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsView;->access$0(Lcom/vkontakte/android/GroupsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 359
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsView;->access$0(Lcom/vkontakte/android/GroupsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/GroupsView$Section;

    iget v0, v0, Lcom/vkontakte/android/GroupsView$Section;->startPos:I

    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsView;->access$0(Lcom/vkontakte/android/GroupsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 333
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsView;->access$0(Lcom/vkontakte/android/GroupsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/GroupsView$Section;

    iget-object v0, v0, Lcom/vkontakte/android/GroupsView$Section;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsView;->access$0(Lcom/vkontakte/android/GroupsView;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/vkontakte/android/GroupsView$Section;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(IILandroid/view/View;)Landroid/view/View;
    .locals 7
    .param p1, "section"    # I
    .param p2, "item"    # I
    .param p3, "convertView"    # Landroid/view/View;

    .prologue
    const v6, 0x7f0800a1

    .line 295
    move-object v2, p3

    .line 296
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_0

    .line 297
    iget-object v3, p0, Lcom/vkontakte/android/GroupsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-virtual {v3}, Lcom/vkontakte/android/GroupsView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f030031

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/vkontakte/android/GroupsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 299
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/GroupsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-static {v3}, Lcom/vkontakte/android/GroupsView;->access$0(Lcom/vkontakte/android/GroupsView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/GroupsView$Section;

    iget-object v3, v3, Lcom/vkontakte/android/GroupsView$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    .line 300
    .local v0, "grp":Lcom/vkontakte/android/api/Group;
    const v3, 0x7f0800a3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    const-string v1, ""

    .line 302
    .local v1, "subtitle":Ljava/lang/String;
    iget v3, v0, Lcom/vkontakte/android/api/Group;->type:I

    if-nez v3, :cond_2

    .line 303
    iget v3, v0, Lcom/vkontakte/android/api/Group;->isClosed:I

    packed-switch v3, :pswitch_data_0

    .line 319
    :cond_1
    :goto_0
    const v3, 0x7f0800a5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    const v3, 0x7f0800a2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 323
    iget-object v3, p0, Lcom/vkontakte/android/GroupsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-static {v3}, Lcom/vkontakte/android/GroupsView;->access$1(Lcom/vkontakte/android/GroupsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    iget-object v4, v0, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 324
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/vkontakte/android/GroupsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-static {v4}, Lcom/vkontakte/android/GroupsView;->access$1(Lcom/vkontakte/android/GroupsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v4

    iget-object v5, v0, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 328
    :goto_1
    return-object v2

    .line 305
    :pswitch_0
    iget-object v3, p0, Lcom/vkontakte/android/GroupsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-virtual {v3}, Lcom/vkontakte/android/GroupsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060043

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 306
    goto :goto_0

    .line 308
    :pswitch_1
    iget-object v3, p0, Lcom/vkontakte/android/GroupsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-virtual {v3}, Lcom/vkontakte/android/GroupsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 309
    goto :goto_0

    .line 311
    :pswitch_2
    iget-object v3, p0, Lcom/vkontakte/android/GroupsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-virtual {v3}, Lcom/vkontakte/android/GroupsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 314
    :cond_2
    iget v3, v0, Lcom/vkontakte/android/api/Group;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 315
    iget-object v3, p0, Lcom/vkontakte/android/GroupsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-virtual {v3}, Lcom/vkontakte/android/GroupsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 316
    goto :goto_0

    :cond_3
    iget v3, v0, Lcom/vkontakte/android/api/Group;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 317
    iget-object v3, p0, Lcom/vkontakte/android/GroupsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-virtual {v3}, Lcom/vkontakte/android/GroupsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v0, Lcom/vkontakte/android/api/Group;->startTime:I

    invoke-static {v3, v4}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 326
    :cond_4
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0200d7

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 353
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsView;->access$0(Lcom/vkontakte/android/GroupsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/GroupsView$Section;

    iget-object v0, v0, Lcom/vkontakte/android/GroupsView$Section;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/GroupsView$FriendsAdapter;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsView;->access$0(Lcom/vkontakte/android/GroupsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/GroupsView$Section;

    iget-object v0, v0, Lcom/vkontakte/android/GroupsView$Section;->list:Ljava/util/ArrayList;

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
