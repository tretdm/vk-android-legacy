.class public Lcom/vkontakte/android/ProfileView;
.super Lcom/vkontakte/android/NewsView;
.source "ProfileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ProfileView$InfoItem;,
        Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;,
        Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;
    }
.end annotation


# instance fields
.field private btnClickListener:Landroid/view/View$OnClickListener;

.field private buttons:Landroid/widget/LinearLayout;

.field private buttonsWrap:Landroid/widget/LinearLayout;

.field private counterClickListener:Landroid/view/View$OnClickListener;

.field private countersWrap:Landroid/widget/LinearLayout;

.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private emptyText:Landroid/widget/TextView;

.field private fixedPostId:I

.field private fragment:Lcom/vkontakte/android/fragments/ProfileFragment;

.field private headerItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private headerView:Landroid/view/View;

.field private infoAdapter:Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;

.field private infoItemClickListener:Landroid/view/View$OnClickListener;

.field private infoItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/ProfileView$InfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private infoLine:Ljava/lang/String;

.field private lAdapter:Lcom/vkontakte/android/ui/MergeAdapter;

.field private ownerOnly:Z

.field private photoFeed:Lcom/vkontakte/android/ui/PhotoFeedView;

.field private profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

.field private relativesViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private selector:Landroid/view/View;

.field private showExtended:Z

.field private uid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/vkontakte/android/fragments/ProfileFragment;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "fr"    # Lcom/vkontakte/android/fragments/ProfileFragment;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, -0xcec8bd

    const/4 v3, 0x0

    const/high16 v5, 0x41400000    # 12.0f

    .line 259
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewsView;-><init>(Landroid/content/Context;)V

    .line 73
    iput-boolean v3, p0, Lcom/vkontakte/android/ProfileView;->showExtended:Z

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->relativesViews:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->headerItems:Ljava/util/ArrayList;

    .line 81
    iput-boolean v3, p0, Lcom/vkontakte/android/ProfileView;->ownerOnly:Z

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->infoLine:Ljava/lang/String;

    .line 88
    new-instance v0, Lcom/vkontakte/android/ProfileView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ProfileView$1;-><init>(Lcom/vkontakte/android/ProfileView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->infoItemClickListener:Landroid/view/View$OnClickListener;

    .line 159
    new-instance v0, Lcom/vkontakte/android/ProfileView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ProfileView$2;-><init>(Lcom/vkontakte/android/ProfileView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->counterClickListener:Landroid/view/View$OnClickListener;

    .line 226
    new-instance v0, Lcom/vkontakte/android/ProfileView$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ProfileView$3;-><init>(Lcom/vkontakte/android/ProfileView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->btnClickListener:Landroid/view/View$OnClickListener;

    .line 260
    iput p2, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    .line 261
    iput-object p3, p0, Lcom/vkontakte/android/ProfileView;->fragment:Lcom/vkontakte/android/fragments/ProfileFragment;

    .line 263
    const v0, 0x7f03005c

    invoke-static {p1, v0, v7}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    .line 264
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setDividerHeight(I)V

    .line 265
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 266
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setTopColor(I)V

    .line 267
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const v1, 0x7f0201e2

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setProgressResource(I)V

    .line 268
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const v1, 0x7f0201a3

    const v2, 0x7f0201a3

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->setArrowResource(II)V

    .line 269
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const v1, -0x414040

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setTextColor(I)V

    .line 270
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v1, 0x7f080124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/ProfileView$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileView$4;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    .line 278
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 279
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->buttonsWrap:Landroid/widget/LinearLayout;

    .line 280
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->buttonsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 281
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->buttonsWrap:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 282
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 283
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->buttonsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 284
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->countersWrap:Landroid/widget/LinearLayout;

    .line 285
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->countersWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 286
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->countersWrap:Landroid/widget/LinearLayout;

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 287
    new-instance v0, Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/PhotoFeedView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->photoFeed:Lcom/vkontakte/android/ui/PhotoFeedView;

    .line 288
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->photoFeed:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-virtual {v0, v6}, Lcom/vkontakte/android/ui/PhotoFeedView;->setBackgroundColor(I)V

    .line 289
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030060

    invoke-static {v0, v1, v7}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->selector:Landroid/view/View;

    .line 290
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->selector:Landroid/view/View;

    const v1, 0x7f080130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/ProfileView$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileView$5;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->selector:Landroid/view/View;

    const v1, 0x7f080131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/ProfileView$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileView$6;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->selector:Landroid/view/View;

    const v1, 0x7f080132

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/ProfileView$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileView$7;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->selector:Landroid/view/View;

    const v1, 0x7f080130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 309
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    new-instance v1, Lcom/vkontakte/android/ProfileView$8;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileView$8;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 320
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->emptyText:Landroid/widget/TextView;

    .line 321
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->emptyText:Landroid/widget/TextView;

    const v1, 0x7f060065

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 322
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->emptyText:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 323
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->emptyText:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 324
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->emptyText:Landroid/widget/TextView;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 325
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->emptyText:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 327
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->headerItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView;->buttonsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->headerItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView;->countersWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->headerItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView;->photoFeed:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->headerItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView;->selector:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ProfileView;->removeView(Landroid/view/View;)V

    .line 334
    iget v0, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    if-lez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v1, 0x7f080129

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/ProfileView$9;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileView$9;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget v0, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_0

    .line 348
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v1, 0x7f080129

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/ProfileView$10;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileView$10;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 358
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ProfileView;)I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/ProfileView;)Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/vkontakte/android/ProfileView;->showExtended:Z

    return v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->headerItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/ProfileView;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->infoItemClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->relativesViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 937
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->toggleExtendedInfo()V

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/ProfileView;Z)V
    .locals 0

    .prologue
    .line 1126
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ProfileView;->switchOwnerOnly(Z)V

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/fragments/ProfileFragment;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->fragment:Lcom/vkontakte/android/fragments/ProfileFragment;

    return-object v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 1068
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->updateCounters()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 745
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->openAudioStatus()V

    return-void
.end method

.method static synthetic access$20(Lcom/vkontakte/android/ProfileView;Z)V
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/vkontakte/android/ProfileView;->ownerOnly:Z

    return-void
.end method

.method static synthetic access$21(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->selector:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$22(Lcom/vkontakte/android/ProfileView;)Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/vkontakte/android/ProfileView;->ownerOnly:Z

    return v0
.end method

.method static synthetic access$23(Lcom/vkontakte/android/ProfileView;Lcom/vkontakte/android/api/ExtendedUserProfile;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    return-void
.end method

.method static synthetic access$24(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 646
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->updateHeaderView()V

    return-void
.end method

.method static synthetic access$25(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 756
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->buildInfoItems()V

    return-void
.end method

.method static synthetic access$26(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 952
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->updateButtons()V

    return-void
.end method

.method static synthetic access$27(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/ui/PhotoFeedView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->photoFeed:Lcom/vkontakte/android/ui/PhotoFeedView;

    return-object v0
.end method

.method static synthetic access$28(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->buttonsWrap:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$29(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->countersWrap:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ProfileView;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1150
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ProfileView;->showStatusEditDlg(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$30(Lcom/vkontakte/android/ProfileView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->emptyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$31(Lcom/vkontakte/android/ProfileView;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/vkontakte/android/ProfileView;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$32(Lcom/vkontakte/android/ProfileView;I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/vkontakte/android/ProfileView;->fixedPostId:I

    return-void
.end method

.method static synthetic access$33(Lcom/vkontakte/android/ProfileView;)I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/vkontakte/android/ProfileView;->fixedPostId:I

    return v0
.end method

.method static synthetic access$34(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/ui/MergeAdapter;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->lAdapter:Lcom/vkontakte/android/ui/MergeAdapter;

    return-object v0
.end method

.method static synthetic access$35(Lcom/vkontakte/android/ProfileView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1176
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ProfileView;->setStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$36(Lcom/vkontakte/android/ProfileView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->infoLine:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$37(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 1336
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->doLeaveGroup()V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 1139
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->showNewPost()V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 1198
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->addFriend()V

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/ProfileView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1215
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ProfileView;->doAddFriend(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 1288
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->doRemoveFriend()V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/ProfileView;Z)V
    .locals 0

    .prologue
    .line 1252
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ProfileView;->joinGroup(Z)V

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 1318
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->leaveGroup()V

    return-void
.end method

.method private addFriend()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1199
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030016

    invoke-static {v1, v2, v8}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1200
    .local v0, "alertView":Landroid/view/View;
    const v1, 0x7f080044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-boolean v2, v2, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_0

    const v2, 0x7f06007a

    :goto_0
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1201
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1202
    const v2, 0x7f060078

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1203
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1204
    const v2, 0x7f060028

    new-instance v3, Lcom/vkontakte/android/ProfileView$19;

    invoke-direct {v3, p0, v0}, Lcom/vkontakte/android/ProfileView$19;-><init>(Lcom/vkontakte/android/ProfileView;Landroid/view/View;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1211
    const v2, 0x7f060027

    invoke-virtual {v1, v2, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1212
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1213
    return-void

    .line 1200
    :cond_0
    const v2, 0x7f060079

    goto :goto_0
.end method

.method private buildInfoItems()V
    .locals 24

    .prologue
    .line 757
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 758
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->activity:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/ProfileView;->uid:I

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-ne v1, v2, :cond_2

    .line 759
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v5, v5, Lcom/vkontakte/android/api/ExtendedUserProfile;->activity:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_28

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v4, v5, Lcom/vkontakte/android/api/ExtendedUserProfile;->activity:Ljava/lang/CharSequence;

    :goto_0
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vkontakte/android/ProfileView;->uid:I

    sget v9, Lcom/vkontakte/android/Global;->uid:I

    if-eq v6, v9, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->audioStatus:Lcom/vkontakte/android/AudioFile;

    if-eqz v6, :cond_29

    :cond_1
    const-string v6, "status"

    :goto_1
    invoke-direct/range {v1 .. v6}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/ProfileView;->uid:I

    if-lez v1, :cond_46

    .line 763
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->bDay:I

    if-lez v1, :cond_3

    .line 765
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->bYear:I

    if-lez v1, :cond_2a

    .line 766
    const-string v1, "%d %s %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v5, v5, Lcom/vkontakte/android/api/ExtendedUserProfile;->bDay:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->bMonth:I

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    aput-object v5, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v5, v5, Lcom/vkontakte/android/api/ExtendedUserProfile;->bYear:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 769
    .local v4, "bd":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f060072

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "bdate"

    invoke-direct/range {v1 .. v6}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    .end local v4    # "bd":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->hometown:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 772
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v5, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v8, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->hometown:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->relation:I

    if-lez v1, :cond_5

    .line 776
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->relationPartner:I

    if-lez v1, :cond_2c

    .line 777
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-boolean v1, v1, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v1, :cond_2b

    const v1, 0x7f0d003a

    :goto_3
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->relation:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v5, v5, Lcom/vkontakte/android/api/ExtendedUserProfile;->relationPartnerName:Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 780
    .local v8, "rel":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v5, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060073

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->relationPartner:I

    if-lez v2, :cond_2e

    const-string v10, "relation"

    :goto_5
    invoke-direct/range {v5 .. v10}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    .end local v8    # "rel":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->langs:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 783
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->langs:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->relatives:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 786
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06019a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->relatives:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 809
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->mobilePhone:Ljava/lang/String;

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->homePhone:Ljava/lang/String;

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->skype:Ljava/lang/String;

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->twitter:Ljava/lang/String;

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->facebookName:Ljava/lang/String;

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->livejournal:Ljava/lang/String;

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->website:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 810
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060189

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 812
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->mobilePhone:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 814
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->mobilePhone:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "mobilePhone"

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->homePhone:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 816
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060075

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->homePhone:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "homePhone"

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->skype:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 818
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06018b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->skype:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "skype"

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->twitter:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 820
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06018a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->twitter:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "twitter"

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->facebookName:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 822
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06018c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->facebookName:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "facebook"

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->website:Ljava/lang/String;

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->website:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_f

    .line 824
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06014d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->website:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "website"

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->livejournal:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 826
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06018d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->livejournal:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "livejournal"

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->schools:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->universities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 829
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06018e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->schools:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_35

    .line 854
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->universities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_41

    .line 868
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->religion:Ljava/lang/String;

    if-eqz v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->religion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_16

    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->inspiredBy:Ljava/lang/String;

    if-eqz v1, :cond_15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->inspiredBy:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->political:I

    if-gtz v1, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->lifeMain:I

    if-gtz v1, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->peopleMain:I

    if-gtz v1, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->smoking:I

    if-gtz v1, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->alcohol:I

    if-lez v1, :cond_1d

    .line 869
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->political:I

    if-lez v1, :cond_17

    .line 871
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    .line 872
    .local v20, "opts":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->political:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v20

    array-length v2, v0

    if-ge v1, v2, :cond_17

    .line 873
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601ef

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->political:I

    add-int/lit8 v2, v2, -0x1

    aget-object v17, v20, v2

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    .end local v20    # "opts":[Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->religion:Ljava/lang/String;

    if-eqz v1, :cond_18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->religion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_18

    .line 876
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->religion:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->lifeMain:I

    if-lez v1, :cond_19

    .line 878
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    .line 879
    .restart local v20    # "opts":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->lifeMain:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v20

    array-length v2, v0

    if-ge v1, v2, :cond_19

    .line 880
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->lifeMain:I

    add-int/lit8 v2, v2, -0x1

    aget-object v17, v20, v2

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 882
    .end local v20    # "opts":[Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->peopleMain:I

    if-lez v1, :cond_1a

    .line 883
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    .line 884
    .restart local v20    # "opts":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->peopleMain:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v20

    array-length v2, v0

    if-ge v1, v2, :cond_1a

    .line 885
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->peopleMain:I

    add-int/lit8 v2, v2, -0x1

    aget-object v17, v20, v2

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    .end local v20    # "opts":[Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->smoking:I

    if-lez v1, :cond_1b

    .line 888
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    .line 889
    .restart local v20    # "opts":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->smoking:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v20

    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 890
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->smoking:I

    add-int/lit8 v2, v2, -0x1

    aget-object v17, v20, v2

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    .end local v20    # "opts":[Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->alcohol:I

    if-lez v1, :cond_1c

    .line 893
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    .line 894
    .restart local v20    # "opts":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->alcohol:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v20

    array-length v2, v0

    if-ge v1, v2, :cond_1c

    .line 895
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->alcohol:I

    add-int/lit8 v2, v2, -0x1

    aget-object v17, v20, v2

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    .end local v20    # "opts":[Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->inspiredBy:Ljava/lang/String;

    if-eqz v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->inspiredBy:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1d

    .line 898
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->inspiredBy:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    :cond_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->activities:Ljava/lang/String;

    if-nez v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->interests:Ljava/lang/String;

    if-nez v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->music:Ljava/lang/String;

    if-nez v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->movies:Ljava/lang/String;

    if-nez v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->tv:Ljava/lang/String;

    if-nez v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->books:Ljava/lang/String;

    if-nez v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->games:Ljava/lang/String;

    if-nez v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->quotations:Ljava/lang/String;

    if-nez v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->about:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 901
    :cond_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060190

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->activities:Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 903
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060191

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->activities:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    :cond_1f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->interests:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 905
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060192

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->interests:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    :cond_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->music:Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 907
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060193

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->music:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    :cond_21
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->movies:Ljava/lang/String;

    if-eqz v1, :cond_22

    .line 909
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060194

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->movies:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    :cond_22
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->tv:Ljava/lang/String;

    if-eqz v1, :cond_23

    .line 911
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060195

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->tv:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    :cond_23
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->books:Ljava/lang/String;

    if-eqz v1, :cond_24

    .line 913
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060197

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->books:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    :cond_24
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->games:Ljava/lang/String;

    if-eqz v1, :cond_25

    .line 915
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060196

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->games:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    :cond_25
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->quotations:Ljava/lang/String;

    if-eqz v1, :cond_26

    .line 917
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060198

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->quotations:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    :cond_26
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->about:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 919
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060199

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->about:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    :cond_27
    :goto_9
    return-void

    .line 759
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060215

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_29
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 768
    :cond_2a
    const-string v1, "%d %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v5, v5, Lcom/vkontakte/android/api/ExtendedUserProfile;->bDay:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->bMonth:I

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "bd":Ljava/lang/String;
    goto/16 :goto_2

    .line 777
    .end local v4    # "bd":Ljava/lang/String;
    :cond_2b
    const v1, 0x7f0d0039

    goto/16 :goto_3

    .line 779
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-boolean v1, v1, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v1, :cond_2d

    const v1, 0x7f0d0012

    :goto_a
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->relation:I

    add-int/lit8 v2, v2, -0x1

    aget-object v8, v1, v2

    .restart local v8    # "rel":Ljava/lang/String;
    goto/16 :goto_4

    .end local v8    # "rel":Ljava/lang/String;
    :cond_2d
    const v1, 0x7f0d0011

    goto :goto_a

    .line 780
    .restart local v8    # "rel":Ljava/lang/String;
    :cond_2e
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 787
    .end local v8    # "rel":Ljava/lang/String;
    :cond_2f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;

    .line 788
    .local v8, "rel":Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;
    const/16 v22, 0x0

    .line 789
    .local v22, "typeRes":I
    iget v2, v8, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->type:I

    packed-switch v2, :pswitch_data_0

    .line 806
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, v8, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v5, v5, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v8, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v5, v5, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v3, v8, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v13, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "relative"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v8, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->user:Lcom/vkontakte/android/UserProfile;

    iget v5, v5, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 791
    :pswitch_0
    iget-object v2, v8, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->user:Lcom/vkontakte/android/UserProfile;

    iget-boolean v2, v2, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_30

    const v22, 0x7f0601a0

    .line 792
    :goto_c
    goto :goto_b

    .line 791
    :cond_30
    const v22, 0x7f06019f

    goto :goto_c

    .line 794
    :pswitch_1
    iget-object v2, v8, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->user:Lcom/vkontakte/android/UserProfile;

    iget-boolean v2, v2, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_31

    const v22, 0x7f06019e

    .line 795
    :goto_d
    goto :goto_b

    .line 794
    :cond_31
    const v22, 0x7f06019d

    goto :goto_d

    .line 797
    :pswitch_2
    iget-object v2, v8, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->user:Lcom/vkontakte/android/UserProfile;

    iget-boolean v2, v2, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_32

    const v22, 0x7f06019c

    .line 798
    :goto_e
    goto :goto_b

    .line 797
    :cond_32
    const v22, 0x7f06019b

    goto :goto_e

    .line 800
    :pswitch_3
    iget-object v2, v8, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->user:Lcom/vkontakte/android/UserProfile;

    iget-boolean v2, v2, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_33

    const v22, 0x7f0601a2

    .line 801
    :goto_f
    goto/16 :goto_b

    .line 800
    :cond_33
    const v22, 0x7f0601a1

    goto :goto_f

    .line 803
    :pswitch_4
    iget-object v2, v8, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->user:Lcom/vkontakte/android/UserProfile;

    iget-boolean v2, v2, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_34

    const v22, 0x7f0601a4

    :goto_10
    goto/16 :goto_b

    :cond_34
    const v22, 0x7f0601a3

    goto :goto_10

    .line 830
    .end local v8    # "rel":Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;
    .end local v22    # "typeRes":I
    :cond_35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/vkontakte/android/api/ExtendedUserProfile$School;

    .line 831
    .local v21, "s":Lcom/vkontakte/android/api/ExtendedUserProfile$School;
    if-eqz v21, :cond_12

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->name:Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 832
    move-object/from16 v0, v21

    iget-object v12, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->name:Ljava/lang/String;

    .line 833
    .local v12, "title":Ljava/lang/String;
    move-object/from16 v0, v21

    iget v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->graduation:I

    if-lez v2, :cond_36

    .line 834
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v21

    iget v7, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->graduation:I

    rem-int/lit8 v7, v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 836
    :cond_36
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->city:Ljava/lang/String;

    if-eqz v2, :cond_40

    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->city:Ljava/lang/String;

    .line 837
    .local v13, "subtitle":Ljava/lang/String;
    :goto_11
    move-object/from16 v0, v21

    iget v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->from:I

    if-gtz v2, :cond_37

    move-object/from16 v0, v21

    iget v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->to:I

    if-lez v2, :cond_38

    :cond_37
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_38

    .line 838
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 839
    :cond_38
    move-object/from16 v0, v21

    iget v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->from:I

    if-lez v2, :cond_39

    .line 840
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget v3, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->from:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 841
    :cond_39
    move-object/from16 v0, v21

    iget v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->from:I

    if-lez v2, :cond_3a

    move-object/from16 v0, v21

    iget v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->to:I

    if-lez v2, :cond_3a

    .line 842
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 843
    :cond_3a
    move-object/from16 v0, v21

    iget v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->to:I

    if-lez v2, :cond_3b

    .line 844
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget v3, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->to:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 845
    :cond_3b
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->className:Ljava/lang/String;

    if-eqz v2, :cond_3c

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->className:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 846
    :cond_3c
    if-eqz v13, :cond_3d

    .line 847
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 848
    :cond_3d
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->speciality:Ljava/lang/String;

    if-eqz v2, :cond_3f

    .line 849
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 850
    :cond_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->speciality:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 852
    :cond_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x0

    move-object/from16 v0, v21

    iget-object v11, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->type:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 836
    .end local v13    # "subtitle":Ljava/lang/String;
    :cond_40
    const-string v13, ""

    goto/16 :goto_11

    .line 854
    .end local v12    # "title":Ljava/lang/String;
    .end local v21    # "s":Lcom/vkontakte/android/api/ExtendedUserProfile$School;
    :cond_41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/vkontakte/android/api/ExtendedUserProfile$University;

    .line 855
    .local v23, "u":Lcom/vkontakte/android/api/ExtendedUserProfile$University;
    move-object/from16 v0, v23

    iget-object v12, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->name:Ljava/lang/String;

    .line 856
    .restart local v12    # "title":Ljava/lang/String;
    move-object/from16 v0, v23

    iget v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->graduation:I

    if-lez v2, :cond_42

    .line 857
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v23

    iget v7, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->graduation:I

    rem-int/lit8 v7, v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 859
    :cond_42
    const-string v13, ""

    .line 860
    .restart local v13    # "subtitle":Ljava/lang/String;
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->faculty:Ljava/lang/String;

    if-eqz v2, :cond_43

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->faculty:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 861
    :cond_43
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->chair:Ljava/lang/String;

    if-eqz v2, :cond_45

    .line 862
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_44

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 863
    :cond_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->chair:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 865
    :cond_45
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f060074

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 922
    .end local v12    # "title":Ljava/lang/String;
    .end local v13    # "subtitle":Ljava/lang/String;
    .end local v23    # "u":Lcom/vkontakte/android/api/ExtendedUserProfile$University;
    :cond_46
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->about:Ljava/lang/String;

    if-eqz v1, :cond_47

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->about:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_47

    .line 923
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06014c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->about:Ljava/lang/String;

    invoke-static {v1}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\n"

    const-string v5, "<br/>"

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    :cond_47
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->website:Ljava/lang/String;

    if-eqz v1, :cond_48

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->website:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_48

    .line 925
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06014d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->website:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "website"

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 926
    :cond_48
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->eventStartTime:I

    if-lez v1, :cond_49

    .line 927
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06014e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v3, v3, Lcom/vkontakte/android/api/ExtendedUserProfile;->eventStartTime:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const-string v19, "time"

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    :cond_49
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->eventEndTime:I

    if-lez v1, :cond_4a

    .line 929
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06014f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v3, v3, Lcom/vkontakte/android/api/ExtendedUserProfile;->eventEndTime:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const-string v19, "time"

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 930
    :cond_4a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    if-eqz v1, :cond_4b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4b

    .line 931
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060150

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-wide v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->lat:D

    const-wide v5, -0x3f3e6c0000000000L    # -9000.0

    cmpl-double v2, v2, v5

    if-eqz v2, :cond_4c

    const-string v19, "place"

    :goto_12
    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    :cond_4b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->mobilePhone:Ljava/lang/String;

    if-eqz v1, :cond_27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->mobilePhone:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_27

    .line 933
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->mobilePhone:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "wiki"

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 931
    :cond_4c
    const/16 v19, 0x0

    goto :goto_12

    .line 789
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private copyLink()V
    .locals 4

    .prologue
    .line 1397
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    if-nez v1, :cond_0

    .line 1401
    :goto_0
    return-void

    .line 1398
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1399
    .local v0, "cm":Landroid/text/ClipboardManager;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://vk.com/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->screenName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1400
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0601b2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private doAddFriend(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1216
    new-instance v0, Lcom/vkontakte/android/api/FriendsAdd;

    iget v1, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    invoke-direct {v0, v1, p1}, Lcom/vkontakte/android/api/FriendsAdd;-><init>(ILjava/lang/String;)V

    .line 1217
    new-instance v1, Lcom/vkontakte/android/ProfileView$20;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileView$20;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FriendsAdd;->setCallback(Lcom/vkontakte/android/api/FriendsAdd$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1248
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1249
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 1250
    return-void
.end method

.method private doLeaveGroup()V
    .locals 2

    .prologue
    .line 1337
    new-instance v0, Lcom/vkontakte/android/api/GroupsLeave;

    iget v1, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    neg-int v1, v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/GroupsLeave;-><init>(I)V

    .line 1338
    new-instance v1, Lcom/vkontakte/android/ProfileView$25;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileView$25;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/GroupsLeave;->setCallback(Lcom/vkontakte/android/api/GroupsLeave$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1355
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1356
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 1357
    return-void
.end method

.method private doRemoveFriend()V
    .locals 2

    .prologue
    .line 1289
    new-instance v0, Lcom/vkontakte/android/api/FriendsDelete;

    iget v1, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/FriendsDelete;-><init>(I)V

    .line 1290
    new-instance v1, Lcom/vkontakte/android/ProfileView$23;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileView$23;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FriendsDelete;->setCallback(Lcom/vkontakte/android/api/FriendsDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1314
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1315
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 1316
    return-void
.end method

.method private joinGroup(Z)V
    .locals 3
    .param p1, "sure"    # Z

    .prologue
    .line 1253
    new-instance v1, Lcom/vkontakte/android/api/GroupsJoin;

    iget v0, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    neg-int v2, v0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/vkontakte/android/api/GroupsJoin;-><init>(IZ)V

    .line 1254
    new-instance v0, Lcom/vkontakte/android/ProfileView$21;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ProfileView$21;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/GroupsJoin;->setCallback(Lcom/vkontakte/android/api/GroupsJoin$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1270
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1271
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 1272
    return-void

    .line 1253
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private leaveGroup()V
    .locals 3

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupAccess:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1320
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->doLeaveGroup()V

    .line 1334
    :goto_0
    return-void

    .line 1323
    :cond_1
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1324
    const v1, 0x7f060112

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1325
    const v1, 0x7f060115

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1326
    const v1, 0x7f060034

    new-instance v2, Lcom/vkontakte/android/ProfileView$24;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ProfileView$24;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1332
    const v1, 0x7f060035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1333
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private openAudioStatus()V
    .locals 5

    .prologue
    .line 746
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 747
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 748
    const-string v1, "act_uid"

    iget v2, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 749
    const-string v1, "list"

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/vkontakte/android/AudioFile;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v4, v4, Lcom/vkontakte/android/api/ExtendedUserProfile;->audioStatus:Lcom/vkontakte/android/AudioFile;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 750
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 751
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 752
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "action"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 753
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 754
    return-void
.end method

.method private openInBrowser()V
    .locals 5

    .prologue
    .line 1404
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://m.vk.com/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v4, v4, Lcom/vkontakte/android/api/ExtendedUserProfile;->screenName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1405
    return-void
.end method

.method private removeFriend()V
    .locals 7

    .prologue
    .line 1275
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1276
    const v1, 0x7f0600d2

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1277
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600d3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->firstNameAcc:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastNameAcc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1278
    const v1, 0x7f060034

    new-instance v2, Lcom/vkontakte/android/ProfileView$22;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ProfileView$22;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1284
    const v1, 0x7f060035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1285
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1286
    return-void
.end method

.method private setStatus(Ljava/lang/String;)V
    .locals 2
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 1177
    new-instance v0, Lcom/vkontakte/android/api/StatusSet;

    invoke-direct {v0, p1}, Lcom/vkontakte/android/api/StatusSet;-><init>(Ljava/lang/String;)V

    .line 1178
    new-instance v1, Lcom/vkontakte/android/ProfileView$18;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/ProfileView$18;-><init>(Lcom/vkontakte/android/ProfileView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/StatusSet;->setCallback(Lcom/vkontakte/android/api/StatusSet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1194
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1195
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 1196
    return-void
.end method

.method private showNewPost()V
    .locals 3

    .prologue
    .line 1140
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1141
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uid"

    iget v2, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1142
    iget v1, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    if-gez v1, :cond_1

    .line 1143
    const-string v1, "group_title"

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1144
    const-string v1, "group_photo"

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1145
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->canSeeAllPosts:Z

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "public"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1147
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1148
    return-void
.end method

.method private showStatusEditDlg(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1151
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1152
    .local v1, "ed":Landroid/widget/EditText;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLines(I)V

    .line 1153
    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 1154
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1155
    new-instance v2, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1156
    const v3, 0x7f060085

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1157
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1158
    const v3, 0x7f060086

    new-instance v4, Lcom/vkontakte/android/ProfileView$16;

    invoke-direct {v4, p0, v1}, Lcom/vkontakte/android/ProfileView$16;-><init>(Lcom/vkontakte/android/ProfileView;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1164
    const v3, 0x7f060027

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1165
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1166
    .local v0, "dlg":Landroid/app/AlertDialog;
    new-instance v2, Lcom/vkontakte/android/ProfileView$17;

    invoke-direct {v2, p0, v1}, Lcom/vkontakte/android/ProfileView$17;-><init>(Lcom/vkontakte/android/ProfileView;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1173
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1174
    return-void
.end method

.method private switchOwnerOnly(Z)V
    .locals 4
    .param p1, "owner"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1127
    iget-boolean v2, p0, Lcom/vkontakte/android/ProfileView;->ownerOnly:Z

    if-eq p1, v2, :cond_0

    iget-boolean v2, p0, Lcom/vkontakte/android/ProfileView;->dataLoading:Z

    if-eqz v2, :cond_1

    .line 1137
    :cond_0
    :goto_0
    return-void

    .line 1128
    :cond_1
    iput-boolean p1, p0, Lcom/vkontakte/android/ProfileView;->ownerOnly:Z

    .line 1129
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ProfileView;->loadData(Z)V

    .line 1130
    iget-object v2, p0, Lcom/vkontakte/android/ProfileView;->selector:Landroid/view/View;

    const v3, 0x7f080130

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 1131
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->selector:Landroid/view/View;

    const v2, 0x7f080131

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 1132
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->selector:Landroid/view/View;

    const v2, 0x7f080132

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1133
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->selector:Landroid/view/View;

    const v2, 0x7f080133

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private toggleBlacklist()V
    .locals 3

    .prologue
    .line 1408
    new-instance v1, Lcom/vkontakte/android/api/AccountBanUser;

    iget v2, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->blacklisted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/vkontakte/android/api/AccountBanUser;-><init>(IZ)V

    .line 1409
    new-instance v0, Lcom/vkontakte/android/ProfileView$26;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ProfileView$26;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/AccountBanUser;->setCallback(Lcom/vkontakte/android/api/AccountBanUser$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 1422
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1423
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 1424
    return-void

    .line 1408
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private toggleExtendedInfo()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x12c

    const/high16 v4, 0x3f000000    # 0.5f

    const/16 v5, -0xb4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 938
    iget-boolean v1, p0, Lcom/vkontakte/android/ProfileView;->showExtended:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/vkontakte/android/ProfileView;->showExtended:Z

    .line 939
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v6, 0x7f080126

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 940
    .local v7, "arrow":Landroid/view/View;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v1, v6, :cond_3

    .line 941
    const-string v4, "rotation"

    const/4 v1, 0x2

    new-array v6, v1, [F

    iget-boolean v1, p0, Lcom/vkontakte/android/ProfileView;->showExtended:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    int-to-float v1, v1

    aput v1, v6, v2

    iget-boolean v1, p0, Lcom/vkontakte/android/ProfileView;->showExtended:Z

    if-eqz v1, :cond_2

    :goto_2
    int-to-float v1, v5

    aput v1, v6, v3

    invoke-static {v7, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 948
    :goto_3
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView;->infoAdapter:Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;

    invoke-virtual {v1}, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->notifyDataSetChanged()V

    .line 949
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 950
    return-void

    .end local v7    # "arrow":Landroid/view/View;
    :cond_0
    move v1, v3

    .line 938
    goto :goto_0

    .restart local v7    # "arrow":Landroid/view/View;
    :cond_1
    move v1, v5

    .line 941
    goto :goto_1

    :cond_2
    move v5, v2

    goto :goto_2

    .line 943
    :cond_3
    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget-boolean v1, p0, Lcom/vkontakte/android/ProfileView;->showExtended:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_4
    int-to-float v1, v1

    iget-boolean v6, p0, Lcom/vkontakte/android/ProfileView;->showExtended:Z

    if-eqz v6, :cond_5

    :goto_5
    int-to-float v2, v5

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 944
    .local v0, "anim":Landroid/view/animation/RotateAnimation;
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 945
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 946
    invoke-virtual {v7, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    .end local v0    # "anim":Landroid/view/animation/RotateAnimation;
    :cond_4
    move v1, v5

    .line 943
    goto :goto_4

    :cond_5
    move v5, v2

    goto :goto_5
.end method

.method private updateButtons()V
    .locals 12

    .prologue
    .line 953
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 954
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 955
    :cond_1
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->buttonsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 956
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->buttonsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 957
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->buttonsWrap:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 959
    :cond_2
    iget v6, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    if-lez v6, :cond_9

    .line 960
    const/4 v0, 0x0

    .line 961
    .local v0, "firstButton":Landroid/widget/Button;
    const/4 v1, 0x0

    .line 962
    .local v1, "friendStatus":Ljava/lang/String;
    iget v6, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    if-ne v6, v7, :cond_10

    .line 963
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f030026

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "firstButton":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 964
    .restart local v0    # "firstButton":Landroid/widget/Button;
    const v6, 0x7f0601ad

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 965
    const-string v6, "post"

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 967
    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 968
    .local v5, "secondButton":Landroid/widget/ImageView;
    const v6, 0x7f02019b

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 969
    const v6, 0x7f0200b9

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 970
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 971
    const-string v6, "photo"

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 972
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42600000    # 56.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    const/high16 v7, 0x42280000    # 42.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 973
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_4

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 974
    :cond_4
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 975
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 993
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "secondButton":Landroid/widget/ImageView;
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 994
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/high16 v10, 0x42280000    # 42.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v0, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 995
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 997
    :cond_6
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->canWrite:Z

    if-eqz v6, :cond_8

    iget v6, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    if-eqz v6, :cond_8

    iget v6, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    if-eq v6, v7, :cond_8

    .line 998
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f030026

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 999
    .local v5, "secondButton":Landroid/widget/Button;
    const v6, 0x7f060077

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 1000
    const-string v6, "message"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1001
    invoke-virtual {v5}, Landroid/widget/Button;->setSingleLine()V

    .line 1002
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1003
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/high16 v7, 0x42280000    # 42.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1004
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_7

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1005
    :cond_7
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1006
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1008
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "secondButton":Landroid/widget/Button;
    :cond_8
    if-eqz v1, :cond_9

    .line 1009
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1010
    .local v2, "fs":Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1011
    const v6, -0x414040

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1012
    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    .line 1013
    .local v4, "pad":I
    const/4 v6, 0x0

    invoke-virtual {v2, v4, v4, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1014
    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1015
    const/16 v6, 0x11

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1016
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->buttonsWrap:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1019
    .end local v0    # "firstButton":Landroid/widget/Button;
    .end local v1    # "friendStatus":Ljava/lang/String;
    .end local v2    # "fs":Landroid/widget/TextView;
    .end local v4    # "pad":I
    :cond_9
    iget v6, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    if-gez v6, :cond_f

    .line 1020
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->canSeeAllPosts:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_b

    :cond_a
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    if-eqz v6, :cond_b

    .line 1021
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f030026

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1022
    .restart local v0    # "firstButton":Landroid/widget/Button;
    const v6, 0x7f0601ad

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 1023
    const-string v6, "post"

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1024
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1025
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/high16 v9, 0x42280000    # 42.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1027
    .end local v0    # "firstButton":Landroid/widget/Button;
    :cond_b
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1a

    .line 1028
    :cond_c
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    if-nez v6, :cond_16

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupAccess:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_d

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_16

    .line 1029
    :cond_d
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f030026

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1030
    .restart local v0    # "firstButton":Landroid/widget/Button;
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupAccess:I

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_15

    :cond_e
    const v6, 0x7f060111

    :goto_2
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 1031
    const-string v6, "join"

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1032
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1033
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/high16 v9, 0x42280000    # 42.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1062
    .end local v0    # "firstButton":Landroid/widget/Button;
    :cond_f
    :goto_3
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Lcom/actionbarsherlock/app/SherlockActivity;

    if-eqz v6, :cond_1b

    .line 1063
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/actionbarsherlock/app/SherlockActivity;

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockActivity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 976
    .restart local v0    # "firstButton":Landroid/widget/Button;
    .restart local v1    # "friendStatus":Ljava/lang/String;
    :cond_10
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    if-nez v6, :cond_11

    .line 977
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f030026

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "firstButton":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 978
    .restart local v0    # "firstButton":Landroid/widget/Button;
    const v6, 0x7f060078

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 979
    const-string v6, "add"

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 980
    :cond_11
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_12

    .line 981
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f030026

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "firstButton":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 982
    .restart local v0    # "firstButton":Landroid/widget/Button;
    const v6, 0x7f0601ac

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 983
    const-string v6, "cancel"

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 984
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0601a8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->firstNameDat:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 985
    goto/16 :goto_1

    :cond_12
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_14

    .line 986
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f030026

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "firstButton":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 987
    .restart local v0    # "firstButton":Landroid/widget/Button;
    const v6, 0x7f0601ab

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 988
    const-string v6, "accept"

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 989
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-boolean v6, v6, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v6, :cond_13

    const v6, 0x7f0601aa

    :goto_4
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v10, v10, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v7, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 990
    goto/16 :goto_1

    .line 989
    :cond_13
    const v6, 0x7f0601a9

    goto :goto_4

    .line 990
    :cond_14
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 991
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0601a7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v10, v10, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1030
    .end local v1    # "friendStatus":Ljava/lang/String;
    :cond_15
    const v6, 0x7f060113

    goto/16 :goto_2

    .line 1034
    .end local v0    # "firstButton":Landroid/widget/Button;
    :cond_16
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_19

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupAccess:I

    if-eqz v6, :cond_17

    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_19

    .line 1035
    :cond_17
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f030026

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1036
    .restart local v0    # "firstButton":Landroid/widget/Button;
    const v6, 0x7f0601ae

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 1037
    const-string v6, "join"

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1038
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1039
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/high16 v9, 0x42280000    # 42.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1040
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f030026

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 1041
    .restart local v5    # "secondButton":Landroid/widget/Button;
    const v6, 0x7f0601af

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 1042
    const-string v6, "join_unsure"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1043
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1044
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/high16 v7, 0x42280000    # 42.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1045
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_18

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1046
    :cond_18
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 1047
    .end local v0    # "firstButton":Landroid/widget/Button;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "secondButton":Landroid/widget/Button;
    :cond_19
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_f

    .line 1048
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f030026

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1049
    .restart local v0    # "firstButton":Landroid/widget/Button;
    const v6, 0x7f060114

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 1050
    const-string v6, "join"

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1051
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1052
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/high16 v9, 0x42280000    # 42.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 1054
    .end local v0    # "firstButton":Landroid/widget/Button;
    :cond_1a
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_f

    .line 1055
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f030026

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1056
    .restart local v0    # "firstButton":Landroid/widget/Button;
    const v6, 0x7f0601ac

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 1057
    const-string v6, "leave"

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1058
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1059
    iget-object v6, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/high16 v9, 0x42280000    # 42.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 1064
    .end local v0    # "firstButton":Landroid/widget/Button;
    :cond_1b
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    if-eqz v6, :cond_0

    .line 1065
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->invalidateOptionsMenu()V

    goto/16 :goto_0
.end method

.method private updateCounters()V
    .locals 14

    .prologue
    .line 1069
    iget-object v10, p0, Lcom/vkontakte/android/ProfileView;->countersWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1072
    iget v10, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    if-eqz v10, :cond_0

    iget v10, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    sget v11, Lcom/vkontakte/android/Global;->uid:I

    if-ne v10, v11, :cond_3

    .line 1073
    :cond_0
    const/4 v10, 0x6

    new-array v2, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "friends"

    aput-object v11, v2, v10

    const/4 v10, 0x1

    const-string v11, "followers"

    aput-object v11, v2, v10

    const/4 v10, 0x2

    const-string v11, "groups"

    aput-object v11, v2, v10

    const/4 v10, 0x3

    const-string v11, "photos"

    aput-object v11, v2, v10

    const/4 v10, 0x4

    const-string v11, "videos"

    aput-object v11, v2, v10

    const/4 v10, 0x5

    const-string v11, "audios"

    aput-object v11, v2, v10

    .line 1074
    .local v2, "cntrs":[Ljava/lang/String;
    const/4 v10, 0x6

    new-array v8, v10, [I

    fill-array-data v8, :array_0

    .line 1082
    .local v8, "titleRes":[I
    :goto_0
    const/4 v6, 0x0

    .line 1083
    .local v6, "n":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v10, v10, 0xf

    const/4 v11, 0x3

    if-lt v10, v11, :cond_5

    iget-object v10, p0, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v10}, Lcom/vkontakte/android/ui/RefreshableListView;->getWidth()I

    move-result v10

    iget-object v11, p0, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v11}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeight()I

    move-result v11

    if-le v10, v11, :cond_5

    const/4 v9, 0x0

    .line 1084
    .local v9, "twoRow":Z
    :goto_1
    iget-object v3, p0, Lcom/vkontakte/android/ProfileView;->countersWrap:Landroid/widget/LinearLayout;

    .line 1085
    .local v3, "curLayout":Landroid/widget/LinearLayout;
    if-eqz v9, :cond_6

    .line 1086
    iget-object v10, p0, Lcom/vkontakte/android/ProfileView;->countersWrap:Landroid/widget/LinearLayout;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1087
    new-instance v3, Landroid/widget/LinearLayout;

    .end local v3    # "curLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1088
    .restart local v3    # "curLayout":Landroid/widget/LinearLayout;
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1089
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v5, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1090
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v10, 0x41000000    # 8.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1091
    iget-object v10, p0, Lcom/vkontakte/android/ProfileView;->countersWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1095
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    const/4 v10, 0x6

    if-ge v6, v10, :cond_1

    array-length v10, v2

    if-lt v4, v10, :cond_7

    .line 1116
    :cond_1
    rem-int/lit8 v10, v6, 0x3

    if-eqz v10, :cond_2

    .line 1117
    rem-int/lit8 v10, v6, 0x3

    rsub-int/lit8 v7, v10, 0x3

    .line 1118
    .local v7, "nn":I
    const/4 v4, 0x0

    :goto_4
    if-lt v4, v7, :cond_e

    .line 1124
    .end local v7    # "nn":I
    :cond_2
    return-void

    .line 1075
    .end local v2    # "cntrs":[Ljava/lang/String;
    .end local v3    # "curLayout":Landroid/widget/LinearLayout;
    .end local v4    # "i":I
    .end local v6    # "n":I
    .end local v8    # "titleRes":[I
    .end local v9    # "twoRow":Z
    :cond_3
    iget v10, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    if-gez v10, :cond_4

    .line 1076
    const/4 v10, 0x6

    new-array v2, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "members"

    aput-object v11, v2, v10

    const/4 v10, 0x1

    const-string v11, "topics"

    aput-object v11, v2, v10

    const/4 v10, 0x2

    const-string v11, "docs"

    aput-object v11, v2, v10

    const/4 v10, 0x3

    const-string v11, "photos"

    aput-object v11, v2, v10

    const/4 v10, 0x4

    const-string v11, "videos"

    aput-object v11, v2, v10

    const/4 v10, 0x5

    const-string v11, "audios"

    aput-object v11, v2, v10

    .line 1077
    .restart local v2    # "cntrs":[Ljava/lang/String;
    const/4 v10, 0x6

    new-array v8, v10, [I

    fill-array-data v8, :array_1

    .line 1078
    .restart local v8    # "titleRes":[I
    goto/16 :goto_0

    .line 1079
    .end local v2    # "cntrs":[Ljava/lang/String;
    .end local v8    # "titleRes":[I
    :cond_4
    const/4 v10, 0x7

    new-array v2, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "friends"

    aput-object v11, v2, v10

    const/4 v10, 0x1

    const-string v11, "mutual_friends"

    aput-object v11, v2, v10

    const/4 v10, 0x2

    const-string v11, "followers"

    aput-object v11, v2, v10

    const/4 v10, 0x3

    const-string v11, "photos"

    aput-object v11, v2, v10

    const/4 v10, 0x4

    const-string v11, "videos"

    aput-object v11, v2, v10

    const/4 v10, 0x5

    const-string v11, "audios"

    aput-object v11, v2, v10

    const/4 v10, 0x6

    const-string v11, "groups"

    aput-object v11, v2, v10

    .line 1080
    .restart local v2    # "cntrs":[Ljava/lang/String;
    const/4 v10, 0x7

    new-array v8, v10, [I

    fill-array-data v8, :array_2

    .restart local v8    # "titleRes":[I
    goto/16 :goto_0

    .line 1083
    .restart local v6    # "n":I
    :cond_5
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 1093
    .restart local v3    # "curLayout":Landroid/widget/LinearLayout;
    .restart local v9    # "twoRow":Z
    :cond_6
    iget-object v10, p0, Lcom/vkontakte/android/ProfileView;->countersWrap:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_2

    .line 1096
    .restart local v4    # "i":I
    :cond_7
    iget-object v10, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    aget-object v11, v2, v4

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    aget-object v11, v2, v4

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lez v10, :cond_b

    .line 1097
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f03005b

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1098
    .local v1, "cntr":Landroid/view/View;
    const v10, 0x7f080123

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/Global;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1100
    iget-object v10, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    aget-object v11, v2, v4

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1101
    .local v0, "c":I
    const v10, 0x7f080123

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    aget v12, v8, v4

    const v11, 0x1869f

    if-le v0, v11, :cond_c

    const/4 v11, 0x7

    :goto_5
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-static {v12, v11, v13}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1102
    const v10, 0x7f080122

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x1869f

    if-le v0, v11, :cond_d

    new-instance v11, Ljava/lang/StringBuilder;

    div-int/lit16 v12, v0, 0x3e8

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "K"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_6
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/high16 v11, 0x42700000    # 60.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v5, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1104
    .restart local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-lez v6, :cond_9

    if-eqz v9, :cond_8

    const/4 v10, 0x3

    if-eq v6, v10, :cond_9

    :cond_8
    const/high16 v10, 0x41000000    # 8.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1105
    :cond_9
    if-eqz v9, :cond_a

    const/4 v10, 0x3

    if-ne v6, v10, :cond_a

    .line 1106
    new-instance v3, Landroid/widget/LinearLayout;

    .end local v3    # "curLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1107
    .restart local v3    # "curLayout":Landroid/widget/LinearLayout;
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1108
    iget-object v10, p0, Lcom/vkontakte/android/ProfileView;->countersWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1110
    :cond_a
    aget-object v10, v2, v4

    invoke-virtual {v1, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1111
    iget-object v10, p0, Lcom/vkontakte/android/ProfileView;->counterClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1112
    invoke-virtual {v3, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1113
    add-int/lit8 v6, v6, 0x1

    .line 1095
    .end local v0    # "c":I
    .end local v1    # "cntr":Landroid/view/View;
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .restart local v0    # "c":I
    .restart local v1    # "cntr":Landroid/view/View;
    :cond_c
    move v11, v0

    .line 1101
    goto :goto_5

    .line 1102
    :cond_d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    .line 1119
    .end local v0    # "c":I
    .end local v1    # "cntr":Landroid/view/View;
    .restart local v7    # "nn":I
    :cond_e
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/high16 v11, 0x42700000    # 60.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v5, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1120
    .restart local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-lez v4, :cond_10

    if-eqz v9, :cond_f

    const/4 v10, 0x3

    if-eq v4, v10, :cond_10

    :cond_f
    const/high16 v10, 0x41000000    # 8.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1121
    :cond_10
    new-instance v10, Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1118
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 1074
    :array_0
    .array-data 4
        0x7f0d0041
        0x7f0d0043
        0x7f0d0047
        0x7f0d0044
        0x7f0d0046
        0x7f0d0045
    .end array-data

    .line 1077
    :array_1
    .array-data 4
        0x7f0d0049
        0x7f0d004a
        0x7f0d0048
        0x7f0d0044
        0x7f0d0046
        0x7f0d0045
    .end array-data

    .line 1080
    :array_2
    .array-data 4
        0x7f0d0041
        0x7f0d0042
        0x7f0d0043
        0x7f0d0044
        0x7f0d0046
        0x7f0d0045
        0x7f0d0047
    .end array-data
.end method

.method private updateHeaderView()V
    .locals 17

    .prologue
    .line 647
    move-object/from16 v0, p0

    iget v10, v0, Lcom/vkontakte/android/ProfileView;->uid:I

    if-lez v10, :cond_5

    .line 648
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 649
    .local v5, "name":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->verified:Z

    if-eqz v10, :cond_0

    .line 650
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 651
    .local v1, "bldr":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v10

    const-string v11, "F"

    invoke-virtual {v10, v11}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v7

    .line 652
    .local v7, "sp":Landroid/text/Spannable;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0201b5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 653
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 654
    new-instance v10, Landroid/text/style/ImageSpan;

    const/4 v11, 0x1

    invoke-direct {v10, v4, v11}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v7, v10, v11, v12, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 655
    const-string v10, "\u00a0"

    invoke-virtual {v1, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 656
    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 657
    move-object v5, v1

    .line 659
    .end local v1    # "bldr":Landroid/text/SpannableStringBuilder;
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    .end local v7    # "sp":Landroid/text/Spannable;
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v11, 0x7f080128

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v11, 0x7f080125

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->activity:Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    move-object/from16 v0, p0

    iget v10, v0, Lcom/vkontakte/android/ProfileView;->uid:I

    if-lez v10, :cond_7

    .line 691
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 692
    .local v8, "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->bYear:I

    if-lez v10, :cond_3

    .line 694
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 695
    .local v2, "c":Ljava/util/Calendar;
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 696
    .local v6, "now":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 697
    .local v3, "c2":Ljava/util/Calendar;
    const/4 v10, 0x5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->bDay:I

    invoke-virtual {v3, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 698
    const/4 v10, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->bMonth:I

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v3, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 699
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->bYear:I

    sub-int v9, v6, v10

    .line 700
    .local v9, "years":I
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 701
    add-int/lit8 v9, v9, -0x1

    .line 703
    :cond_2
    const v10, 0x7f0d004b

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v10, v9, v11}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    .end local v2    # "c":Ljava/util/Calendar;
    .end local v3    # "c2":Ljava/util/Calendar;
    .end local v6    # "now":I
    .end local v9    # "years":I
    :cond_3
    const-string v10, ", "

    invoke-static {v10, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/vkontakte/android/ProfileView;->infoLine:Ljava/lang/String;

    .line 709
    .end local v8    # "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->activity:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_4

    .line 710
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v11, 0x7f080125

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->infoLine:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget v10, v10, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v10, :cond_8

    .line 713
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v11, 0x7f080127

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f060081

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 719
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v11, 0x7f080127

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setSelected(Z)V

    .line 720
    return-void

    .line 661
    .end local v5    # "name":Ljava/lang/CharSequence;
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v5, v10, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 662
    .restart local v5    # "name":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->verified:Z

    if-eqz v10, :cond_6

    .line 663
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 664
    .restart local v1    # "bldr":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v10

    const-string v11, "F"

    invoke-virtual {v10, v11}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v7

    .line 665
    .restart local v7    # "sp":Landroid/text/Spannable;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0201b5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 666
    .restart local v4    # "d":Landroid/graphics/drawable/Drawable;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 667
    new-instance v10, Landroid/text/style/ImageSpan;

    const/4 v11, 0x1

    invoke-direct {v10, v4, v11}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v7, v10, v11, v12, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 668
    const-string v10, "\u00a0"

    invoke-virtual {v1, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 669
    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 670
    move-object v5, v1

    .line 672
    .end local v1    # "bldr":Landroid/text/SpannableStringBuilder;
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    .end local v7    # "sp":Landroid/text/Spannable;
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v11, 0x7f080128

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v11, 0x7f080128

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->setSingleLine()V

    .line 674
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v11, 0x7f080128

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v11, 0x7f080128

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setSelected(Z)V

    .line 676
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v11, 0x7f080128

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 677
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v11, 0x7f080128

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const/high16 v11, 0x41200000    # 10.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    goto/16 :goto_0

    .line 707
    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->infoLine:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/vkontakte/android/ProfileView;->infoLine:Ljava/lang/String;

    goto/16 :goto_1

    .line 714
    :cond_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastSeen:I

    if-lez v10, :cond_a

    .line 715
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v11, 0x7f080127

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-boolean v11, v11, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v11, :cond_9

    const v11, 0x7f060188

    :goto_3
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v15, v15, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastSeen:I

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v12, v11, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_9
    const v11, 0x7f060187

    goto :goto_3

    .line 717
    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v11, 0x7f080127

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method


# virtual methods
.method protected canHideFromFeed()Z
    .locals 1

    .prologue
    .line 723
    const/4 v0, 0x0

    return v0
.end method

.method protected createAdapter()Landroid/widget/ListAdapter;
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->lAdapter:Lcom/vkontakte/android/ui/MergeAdapter;

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Lcom/vkontakte/android/ui/MergeAdapter;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/MergeAdapter;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->lAdapter:Lcom/vkontakte/android/ui/MergeAdapter;

    .line 418
    new-instance v0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;-><init>(Lcom/vkontakte/android/ProfileView;Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;)V

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->infoAdapter:Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;

    .line 419
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->lAdapter:Lcom/vkontakte/android/ui/MergeAdapter;

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView;->infoAdapter:Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 420
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->lAdapter:Lcom/vkontakte/android/ui/MergeAdapter;

    invoke-super {p0}, Lcom/vkontakte/android/NewsView;->createAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->lAdapter:Lcom/vkontakte/android/ui/MergeAdapter;

    return-object v0
.end method

.method protected createImageLoaderAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .locals 3

    .prologue
    .line 426
    new-instance v0, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;-><init>()V

    .line 427
    .local v0, "la":Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;
    new-instance v1, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;-><init>(Lcom/vkontakte/android/ProfileView;Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->addAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 428
    invoke-super {p0}, Lcom/vkontakte/android/NewsView;->createImageLoaderAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->addAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 429
    return-object v0
.end method

.method protected getPostsOffset()I
    .locals 1

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->infoAdapter:Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public loadData(Z)V
    .locals 12
    .param p1, "refresh"    # Z

    .prologue
    const/16 v3, 0xa

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 528
    iget-boolean v0, p0, Lcom/vkontakte/android/ProfileView;->dataLoading:Z

    if-eqz v0, :cond_0

    .line 644
    :goto_0
    return-void

    .line 529
    :cond_0
    iput-boolean v1, p0, Lcom/vkontakte/android/ProfileView;->dataLoading:Z

    .line 530
    iget v0, p0, Lcom/vkontakte/android/ProfileView;->lastUpdateTime:I

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/cache/UserWallCache;->hasEntries(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/cache/UserWallCache;->getUpdateTime(Landroid/content/Context;)I

    move-result v0

    int-to-long v10, v0

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x15180

    cmp-long v0, v8, v10

    if-lez v0, :cond_5

    .line 531
    :cond_2
    if-eqz p1, :cond_3

    .line 532
    const-string v0, "0"

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->commentsFrom:Ljava/lang/String;

    .line 533
    iput v5, p0, Lcom/vkontakte/android/ProfileView;->offset:I

    .line 536
    :cond_3
    new-instance v0, Lcom/vkontakte/android/api/WallGet;

    iget v1, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    iget v2, p0, Lcom/vkontakte/android/ProfileView;->offset:I

    iget-boolean v4, p0, Lcom/vkontakte/android/ProfileView;->preloading:Z

    if-eqz v4, :cond_4

    :goto_1
    iget-boolean v4, p0, Lcom/vkontakte/android/ProfileView;->ownerOnly:Z

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/WallGet;-><init>(IIIZZ)V

    .line 537
    new-instance v1, Lcom/vkontakte/android/ProfileView$14;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/ProfileView$14;-><init>(Lcom/vkontakte/android/ProfileView;Z)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallGet;->setCallback(Lcom/vkontakte/android/api/WallGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 624
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 536
    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->currentReq:Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    :cond_4
    const/16 v3, 0x14

    goto :goto_1

    .line 626
    :cond_5
    if-eqz p1, :cond_6

    .line 627
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->selector:Landroid/view/View;

    const v2, 0x7f080132

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    if-eqz v0, :cond_9

    move v0, v5

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->selector:Landroid/view/View;

    const v2, 0x7f080133

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 630
    :cond_6
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->news:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 631
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/16 v2, 0x12c

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 633
    :cond_7
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->selector:Landroid/view/View;

    const v2, 0x7f080130

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/vkontakte/android/ProfileView;->ownerOnly:Z

    if-eqz v0, :cond_a

    move v0, v5

    :goto_3
    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 634
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->selector:Landroid/view/View;

    const v1, 0x7f080131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vkontakte/android/ProfileView;->ownerOnly:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 635
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/cache/UserWallCache;->get(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v6

    .line 636
    .local v6, "e":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v3, :cond_b

    .line 637
    invoke-virtual {p0, v6, p1}, Lcom/vkontakte/android/ProfileView;->onDataLoaded(Ljava/util/List;Z)V

    .line 642
    :cond_8
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/cache/UserWallCache;->getUpdateTime(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/ProfileView;->lastUpdateTime:I

    goto/16 :goto_0

    .line 627
    .end local v6    # "e":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    :cond_9
    const/4 v0, 0x4

    goto :goto_2

    :cond_a
    move v0, v1

    .line 633
    goto :goto_3

    .line 639
    .restart local v6    # "e":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    :cond_b
    invoke-virtual {v6, v5, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/ProfileView;->onDataLoaded(Ljava/util/List;Z)V

    .line 640
    const/16 v7, 0xa

    .local v7, "i":I
    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_8

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView;->preloadedNews:Ljava/util/Vector;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_4
.end method

.method public loadInitial()V
    .locals 3

    .prologue
    .line 433
    new-instance v0, Lcom/vkontakte/android/api/GetFullProfile;

    iget v1, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/GetFullProfile;-><init>(II)V

    .line 434
    new-instance v1, Lcom/vkontakte/android/ProfileView$13;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileView$13;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/GetFullProfile;->setCallback(Lcom/vkontakte/android/api/GetFullProfile$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 524
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 433
    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 525
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    const v4, 0x7f080191

    const v3, 0x7f080190

    const v5, 0x7f080193

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1360
    iget-object v2, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    if-nez v2, :cond_0

    .line 1373
    :goto_0
    return-void

    .line 1361
    :cond_0
    const v2, 0x7f0e0008

    invoke-virtual {p2, v2, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 1362
    iget v2, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    if-lez v2, :cond_4

    .line 1363
    invoke-interface {p1, v4}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 1364
    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v3, v3, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    :goto_1
    invoke-interface {v2, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 1365
    iget v0, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v2, :cond_1

    .line 1366
    invoke-interface {p1, v5}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 1367
    :cond_1
    invoke-interface {p1, v5}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->blacklisted:Z

    if-eqz v0, :cond_3

    const v0, 0x7f060222

    :goto_2
    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setTitle(I)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1364
    goto :goto_1

    .line 1367
    :cond_3
    const v0, 0x7f060221

    goto :goto_2

    .line 1369
    :cond_4
    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 1370
    invoke-interface {p1, v4}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v3, v3, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    if-ne v3, v0, :cond_5

    :goto_3
    invoke-interface {v2, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 1371
    invoke-interface {p1, v5}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1370
    goto :goto_3
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 362
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 1376
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1393
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1378
    :sswitch_0
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->removeFriend()V

    goto :goto_0

    .line 1381
    :sswitch_1
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->leaveGroup()V

    goto :goto_0

    .line 1384
    :sswitch_2
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->copyLink()V

    goto :goto_0

    .line 1387
    :sswitch_3
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->openInBrowser()V

    goto :goto_0

    .line 1390
    :sswitch_4
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->toggleBlacklist()V

    goto :goto_0

    .line 1376
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08001d -> :sswitch_2
        0x7f080190 -> :sswitch_0
        0x7f080191 -> :sswitch_1
        0x7f080192 -> :sswitch_3
        0x7f080193 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1427
    invoke-super {p0}, Lcom/vkontakte/android/NewsView;->onPause()V

    .line 1428
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->photoFeed:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->onPause()V

    .line 1429
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1432
    invoke-super {p0}, Lcom/vkontakte/android/NewsView;->onResume()V

    .line 1433
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->photoFeed:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->onResume()V

    .line 1434
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 405
    invoke-super {p0, p1, p2, p3, p4}, Lcom/vkontakte/android/NewsView;->onSizeChanged(IIII)V

    .line 406
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    if-eqz v0, :cond_0

    .line 407
    new-instance v0, Lcom/vkontakte/android/ProfileView$12;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ProfileView$12;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ProfileView;->post(Ljava/lang/Runnable;)Z

    .line 413
    :cond_0
    return-void
.end method

.method public openProfilePhotos()V
    .locals 6

    .prologue
    .line 371
    new-instance v0, Lcom/vkontakte/android/api/PhotosGet;

    iget v1, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    const/4 v2, -0x6

    const/4 v3, 0x0

    const/16 v4, 0x1f4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/PhotosGet;-><init>(IIIIZ)V

    .line 372
    new-instance v1, Lcom/vkontakte/android/ProfileView$11;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileView$11;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosGet;->setCallback(Lcom/vkontakte/android/api/PhotosGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 400
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 401
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 402
    return-void
.end method

.method public setUserPhoto(Ljava/lang/String;)V
    .locals 1
    .param p1, "photo"    # Ljava/lang/String;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iput-object p1, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 366
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iput-object p1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->bigPhoto:Ljava/lang/String;

    .line 367
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 368
    return-void
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 727
    new-instance v0, Lcom/vkontakte/android/ProfileView$15;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ProfileView$15;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ProfileView;->post(Ljava/lang/Runnable;)Z

    .line 742
    invoke-super {p0}, Lcom/vkontakte/android/NewsView;->updateList()V

    .line 743
    return-void
.end method
