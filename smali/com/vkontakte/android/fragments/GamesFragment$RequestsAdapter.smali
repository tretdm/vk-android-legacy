.class Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;
.super Lcom/vkontakte/android/ui/MultiSectionAdapter;
.source "GamesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/GamesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GamesFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/GamesFragment;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;-><init>()V

    .line 685
    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/GamesFragment;Lcom/vkontakte/android/fragments/GamesFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/GamesFragment;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/GamesFragment$1;

    .prologue
    .line 574
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;-><init>(Lcom/vkontakte/android/fragments/GamesFragment;)V

    return-void
.end method


# virtual methods
.method public getHeaderLayoutResource()I
    .locals 1

    .prologue
    .line 682
    const v0, 0x7f03003c

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 584
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$000(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount(I)I
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 577
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$1600(Lcom/vkontakte/android/fragments/GamesFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$000(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 578
    const/4 v0, 0x3

    .line 579
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$000(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(II)J
    .locals 2
    .param p1, "section"    # I
    .param p2, "position"    # I

    .prologue
    .line 589
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$000(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/data/GameRequest;

    iget v0, v0, Lcom/vkontakte/android/data/GameRequest;->id:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(II)I
    .locals 2
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    const/4 v0, 0x2

    .line 599
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GamesFragment;->access$1600(Lcom/vkontakte/android/fragments/GamesFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne p2, v0, :cond_0

    .line 600
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$000(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/data/GameRequest;

    iget v0, v0, Lcom/vkontakte/android/data/GameRequest;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 672
    const/4 v0, 0x1

    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 3
    .param p1, "section"    # I

    .prologue
    .line 667
    const v0, 0x7f070014

    iget-object v1, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GamesFragment;->access$000(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/GamesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(IILandroid/view/View;)Landroid/view/View;
    .locals 12
    .param p1, "section"    # I
    .param p2, "position"    # I
    .param p3, "convertView"    # Landroid/view/View;

    .prologue
    .line 605
    move-object v4, p3

    .line 606
    .local v4, "view":Landroid/view/View;
    iget-object v6, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/GamesFragment;->access$1600(Lcom/vkontakte/android/fragments/GamesFragment;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x2

    if-ne p2, v6, :cond_1

    .line 607
    if-nez v4, :cond_0

    .line 608
    iget-object v6, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/GamesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f030036

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 610
    :cond_0
    const v6, 0x7f08007b

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f070015

    iget-object v8, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/GamesFragment;->access$000(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    iget-object v9, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-virtual {v9}, Lcom/vkontakte/android/fragments/GamesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v5, v4

    .line 662
    .end local v4    # "view":Landroid/view/View;
    .local v5, "view":Landroid/view/View;
    :goto_0
    return-object v5

    .line 613
    .end local v5    # "view":Landroid/view/View;
    .restart local v4    # "view":Landroid/view/View;
    :cond_1
    iget-object v6, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/GamesFragment;->access$000(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/data/GameRequest;

    .line 614
    .local v1, "r":Lcom/vkontakte/android/data/GameRequest;
    if-nez v4, :cond_2

    .line 615
    iget-object v6, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/GamesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget v6, v1, Lcom/vkontakte/android/data/GameRequest;->type:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_5

    const v6, 0x7f030004

    :goto_1
    const/4 v8, 0x0

    invoke-static {v7, v6, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 616
    new-instance v0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;

    const/4 v6, 0x0

    invoke-direct {v0, p0, v6}, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;-><init>(Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;Lcom/vkontakte/android/fragments/GamesFragment$1;)V

    .line 617
    .local v0, "holder":Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;
    const v6, 0x7f08002f

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 618
    const v6, 0x7f080031

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;->msg:Landroid/widget/TextView;

    .line 619
    const v6, 0x7f080036

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    .line 620
    const v6, 0x7f080037

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;->appSubtitle:Landroid/widget/TextView;

    .line 621
    const v6, 0x7f08002e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    .line 622
    const v6, 0x7f080030

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 623
    iget-object v6, v0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/GamesFragment;->access$1500(Lcom/vkontakte/android/fragments/GamesFragment;)Landroid/view/View$OnClickListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    const v6, 0x7f080034

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/GamesFragment;->access$1800(Lcom/vkontakte/android/fragments/GamesFragment;)Landroid/view/View$OnClickListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 625
    const v6, 0x7f080035

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/GamesFragment;->access$1900(Lcom/vkontakte/android/fragments/GamesFragment;)Landroid/view/View$OnClickListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 629
    .end local v0    # "holder":Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;

    .line 630
    .restart local v0    # "holder":Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;
    iget-object v6, v0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    if-eqz v6, :cond_3

    .line 631
    iget-object v6, v0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/vkontakte/android/data/GameRequest;->app:Lcom/vkontakte/android/data/ApiApplication;

    iget-object v7, v7, Lcom/vkontakte/android/data/ApiApplication;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    :cond_3
    iget-object v6, v0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;->appSubtitle:Landroid/widget/TextView;

    if-eqz v6, :cond_4

    .line 633
    iget-object v6, v0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;->appSubtitle:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/vkontakte/android/data/GameRequest;->app:Lcom/vkontakte/android/data/ApiApplication;

    iget-object v7, v7, Lcom/vkontakte/android/data/ApiApplication;->genre:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    :cond_4
    iget-object v6, v0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/vkontakte/android/data/GameRequest;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    iget v6, v1, Lcom/vkontakte/android/data/GameRequest;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 637
    iget-object v6, v0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;->msg:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 638
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 639
    .local v3, "ssb":Landroid/text/SpannableStringBuilder;
    iget-object v6, v1, Lcom/vkontakte/android/data/GameRequest;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v6, v6, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 640
    const-string v6, " "

    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 641
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    const v8, 0x7f0d0113

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/fragments/GamesFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v2

    .line 642
    .local v2, "sp":Landroid/text/Spannable;
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const v7, -0x635f5a

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v7, 0x0

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v8

    const/4 v9, 0x0

    invoke-interface {v2, v6, v7, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 643
    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    const v7, 0x3f638da4

    invoke-direct {v6, v7}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/4 v7, 0x0

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v8

    const/4 v9, 0x0

    invoke-interface {v2, v6, v7, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 644
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 645
    iget-object v6, v0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    .end local v2    # "sp":Landroid/text/Spannable;
    .end local v3    # "ssb":Landroid/text/SpannableStringBuilder;
    :goto_2
    iget-object v6, v0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    iget-object v7, v1, Lcom/vkontakte/android/data/GameRequest;->user:Lcom/vkontakte/android/UserProfile;

    iget v7, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 650
    const v6, 0x7f080034

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 651
    const v6, 0x7f080035

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 653
    iget-object v6, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/GamesFragment;->access$1300(Lcom/vkontakte/android/fragments/GamesFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v6

    iget-object v7, v1, Lcom/vkontakte/android/data/GameRequest;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 654
    iget-object v6, v0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/GamesFragment;->access$1300(Lcom/vkontakte/android/fragments/GamesFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v7

    iget-object v8, v1, Lcom/vkontakte/android/data/GameRequest;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v8, v8, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 657
    :goto_3
    iget-object v6, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/GamesFragment;->access$1300(Lcom/vkontakte/android/fragments/GamesFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v6

    iget-object v7, v1, Lcom/vkontakte/android/data/GameRequest;->app:Lcom/vkontakte/android/data/ApiApplication;

    iget-object v7, v7, Lcom/vkontakte/android/data/ApiApplication;->icons:[Ljava/lang/String;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 658
    iget-object v6, v0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/GamesFragment;->access$1300(Lcom/vkontakte/android/fragments/GamesFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v7

    iget-object v8, v1, Lcom/vkontakte/android/data/GameRequest;->app:Lcom/vkontakte/android/data/ApiApplication;

    iget-object v8, v8, Lcom/vkontakte/android/data/ApiApplication;->icons:[Ljava/lang/String;

    const/4 v9, 0x4

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_4
    move-object v5, v4

    .line 662
    .end local v4    # "view":Landroid/view/View;
    .restart local v5    # "view":Landroid/view/View;
    goto/16 :goto_0

    .line 615
    .end local v0    # "holder":Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;
    .end local v5    # "view":Landroid/view/View;
    .restart local v4    # "view":Landroid/view/View;
    :cond_5
    const v6, 0x7f030005

    goto/16 :goto_1

    .line 647
    .restart local v0    # "holder":Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;
    :cond_6
    iget-object v7, v0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;->msg:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/vkontakte/android/data/GameRequest;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7

    iget-object v6, v1, Lcom/vkontakte/android/data/GameRequest;->text:Ljava/lang/String;

    :goto_5
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_7
    iget-object v8, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    iget-object v6, v1, Lcom/vkontakte/android/data/GameRequest;->user:Lcom/vkontakte/android/UserProfile;

    iget-boolean v6, v6, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v6, :cond_8

    const v6, 0x7f0d011a

    :goto_6
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v1, Lcom/vkontakte/android/data/GameRequest;->app:Lcom/vkontakte/android/data/ApiApplication;

    iget-object v11, v11, Lcom/vkontakte/android/data/ApiApplication;->title:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v8, v6, v9}, Lcom/vkontakte/android/fragments/GamesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_8
    const v6, 0x7f0d011b

    goto :goto_6

    .line 656
    :cond_9
    iget-object v6, v0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    const v7, 0x7f0201ec

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 660
    :cond_a
    iget-object v6, v0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v7, 0x7f020074

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x4

    return v0
.end method

.method public isSectionHeaderVisible(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 677
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/GamesFragment;->access$000(Lcom/vkontakte/android/fragments/GamesFragment;)Ljava/util/ArrayList;

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
