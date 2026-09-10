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

.field private postponedView:Landroid/view/View;

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

.field private suggestsView:Landroid/view/View;

.field private uid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/vkontakte/android/fragments/ProfileFragment;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "fr"    # Lcom/vkontakte/android/fragments/ProfileFragment;

    .prologue
    const/4 v8, 0x1

    const v7, -0xcec8bd

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/high16 v5, 0x41400000    # 12.0f

    .line 279
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewsView;-><init>(Landroid/content/Context;)V

    .line 76
    iput-boolean v3, p0, Lcom/vkontakte/android/ProfileView;->showExtended:Z

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->relativesViews:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->headerItems:Ljava/util/ArrayList;

    .line 84
    iput-boolean v3, p0, Lcom/vkontakte/android/ProfileView;->ownerOnly:Z

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->infoLine:Ljava/lang/String;

    .line 92
    new-instance v0, Lcom/vkontakte/android/ProfileView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ProfileView$1;-><init>(Lcom/vkontakte/android/ProfileView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->infoItemClickListener:Landroid/view/View$OnClickListener;

    .line 180
    new-instance v0, Lcom/vkontakte/android/ProfileView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ProfileView$2;-><init>(Lcom/vkontakte/android/ProfileView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->counterClickListener:Landroid/view/View$OnClickListener;

    .line 246
    new-instance v0, Lcom/vkontakte/android/ProfileView$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ProfileView$3;-><init>(Lcom/vkontakte/android/ProfileView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->btnClickListener:Landroid/view/View$OnClickListener;

    .line 280
    iput p2, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    .line 281
    iput-object p3, p0, Lcom/vkontakte/android/ProfileView;->fragment:Lcom/vkontakte/android/fragments/ProfileFragment;

    .line 283
    const v0, 0x7f030078

    invoke-static {p1, v0, v6}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    .line 284
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setDividerHeight(I)V

    .line 285
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 286
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->setTopColor(I)V

    .line 287
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const v1, 0x7f020210

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setProgressResource(I)V

    .line 288
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const v1, 0x7f0201c4

    const v2, 0x7f0201c4

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->setArrowResource(II)V

    .line 289
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const v1, -0x414040

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setTextColor(I)V

    .line 290
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v1, 0x7f090172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/ProfileView$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileView$4;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    .line 298
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 299
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->buttonsWrap:Landroid/widget/LinearLayout;

    .line 300
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->buttonsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 301
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->buttonsWrap:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 302
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 303
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->buttonsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 304
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->countersWrap:Landroid/widget/LinearLayout;

    .line 305
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->countersWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 306
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

    .line 307
    new-instance v0, Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/PhotoFeedView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->photoFeed:Lcom/vkontakte/android/ui/PhotoFeedView;

    .line 308
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->photoFeed:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-virtual {v0, v7}, Lcom/vkontakte/android/ui/PhotoFeedView;->setBackgroundColor(I)V

    .line 309
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03007d

    invoke-static {v0, v1, v6}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->selector:Landroid/view/View;

    .line 310
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->selector:Landroid/view/View;

    const v1, 0x7f09017d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/ProfileView$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileView$5;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->selector:Landroid/view/View;

    const v1, 0x7f09017e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/ProfileView$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileView$6;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->selector:Landroid/view/View;

    const v1, 0x7f09017f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/ProfileView$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileView$7;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->selector:Landroid/view/View;

    const v1, 0x7f09017d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 329
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    new-instance v1, Lcom/vkontakte/android/ProfileView$8;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileView$8;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 340
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->emptyText:Landroid/widget/TextView;

    .line 341
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->emptyText:Landroid/widget/TextView;

    const v1, 0x7f080080

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 342
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->emptyText:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 343
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

    .line 344
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->emptyText:Landroid/widget/TextView;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 345
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->emptyText:Landroid/widget/TextView;

    const v1, -0x5c5c5d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 347
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030043

    invoke-static {v0, v1, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->postponedView:Landroid/view/View;

    .line 348
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030043

    invoke-static {v0, v1, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->suggestsView:Landroid/view/View;

    .line 349
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->postponedView:Landroid/view/View;

    new-instance v1, Lcom/vkontakte/android/ProfileView$9;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileView$9;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->suggestsView:Landroid/view/View;

    new-instance v1, Lcom/vkontakte/android/ProfileView$10;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileView$10;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ProfileView;->removeView(Landroid/view/View;)V

    .line 370
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v1, 0x7f090177

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/ProfileView$11;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileView$11;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget v0, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_0

    .line 383
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v1, 0x7f090177

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/ProfileView$12;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileView$12;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 392
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ProfileView;)I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/ProfileView;)Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/vkontakte/android/ProfileView;->showExtended:Z

    return v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->headerItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/ProfileView;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->infoItemClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->relativesViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 1123
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->toggleExtendedInfo()V

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/ProfileView;Z)V
    .locals 0

    .prologue
    .line 1315
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ProfileView;->switchOwnerOnly(Z)V

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/fragments/ProfileFragment;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->fragment:Lcom/vkontakte/android/fragments/ProfileFragment;

    return-object v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 1257
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->updateCounters()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 909
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->openAudioStatus()V

    return-void
.end method

.method static synthetic access$20(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->buttonsWrap:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$21(Lcom/vkontakte/android/ProfileView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->countersWrap:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$22(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/ui/PhotoFeedView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->photoFeed:Lcom/vkontakte/android/ui/PhotoFeedView;

    return-object v0
.end method

.method static synthetic access$23(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->selector:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$24(Lcom/vkontakte/android/ProfileView;Z)V
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/vkontakte/android/ProfileView;->ownerOnly:Z

    return-void
.end method

.method static synthetic access$25(Lcom/vkontakte/android/ProfileView;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/vkontakte/android/ProfileView;->ownerOnly:Z

    return v0
.end method

.method static synthetic access$26(Lcom/vkontakte/android/ProfileView;Lcom/vkontakte/android/api/ExtendedUserProfile;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    return-void
.end method

.method static synthetic access$27(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 784
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->updateHeaderView()V

    return-void
.end method

.method static synthetic access$28(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 921
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->buildInfoItems()V

    return-void
.end method

.method static synthetic access$29(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 1138
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->updateButtons()V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ProfileView;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1340
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ProfileView;->showStatusEditDlg(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$30(Lcom/vkontakte/android/ProfileView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->emptyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$31(Lcom/vkontakte/android/ProfileView;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/vkontakte/android/ProfileView;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$32(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 771
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->updatePostsButtons()V

    return-void
.end method

.method static synthetic access$33(Lcom/vkontakte/android/ProfileView;I)V
    .locals 0

    .prologue
    .line 87
    iput p1, p0, Lcom/vkontakte/android/ProfileView;->fixedPostId:I

    return-void
.end method

.method static synthetic access$34(Lcom/vkontakte/android/ProfileView;)I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/vkontakte/android/ProfileView;->fixedPostId:I

    return v0
.end method

.method static synthetic access$35(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/ui/MergeAdapter;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->lAdapter:Lcom/vkontakte/android/ui/MergeAdapter;

    return-object v0
.end method

.method static synthetic access$36(Lcom/vkontakte/android/ProfileView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1367
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ProfileView;->setStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$37(Lcom/vkontakte/android/ProfileView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->infoLine:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$38(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 1563
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->doLeaveGroup()V

    return-void
.end method

.method static synthetic access$39(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 1659
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->doToggleBlacklist()V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 1328
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->showNewPost()V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 1389
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->addFriend()V

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/ProfileView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1406
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ProfileView;->doAddFriend(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 1515
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->doRemoveFriend()V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/ProfileView;Z)V
    .locals 0

    .prologue
    .line 1479
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ProfileView;->joinGroup(Z)V

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 1545
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->leaveGroup()V

    return-void
.end method

.method private addFriend()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1390
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030016

    invoke-static {v1, v2, v8}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1391
    .local v0, "alertView":Landroid/view/View;
    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-boolean v2, v2, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_0

    const v2, 0x7f080094

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

    .line 1392
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1393
    const v2, 0x7f080092

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1394
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1395
    const v2, 0x7f080042

    new-instance v3, Lcom/vkontakte/android/ProfileView$21;

    invoke-direct {v3, p0, v0}, Lcom/vkontakte/android/ProfileView$21;-><init>(Lcom/vkontakte/android/ProfileView;Landroid/view/View;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1402
    const v2, 0x7f080041

    invoke-virtual {v1, v2, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1403
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1404
    return-void

    .line 1391
    :cond_0
    const v2, 0x7f080093

    goto :goto_0
.end method

.method private buildInfoItems()V
    .locals 27

    .prologue
    .line 922
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 923
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

    .line 924
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

    if-lez v5, :cond_2d

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

    if-eqz v6, :cond_2e

    :cond_1
    const-string v6, "status"

    :goto_1
    invoke-direct/range {v1 .. v6}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/ProfileView;->uid:I

    if-lez v1, :cond_4f

    .line 928
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->bDay:I

    if-lez v1, :cond_3

    .line 930
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->bYear:I

    if-lez v1, :cond_2f

    .line 931
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

    .line 934
    .local v4, "bd":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f08008c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "bdate"

    invoke-direct/range {v1 .. v6}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    .end local v4    # "bd":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->hometown:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 937
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v5, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080213

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v8, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->hometown:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 939
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->relation:I

    if-lez v1, :cond_5

    .line 941
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->relationPartner:I

    if-lez v1, :cond_31

    .line 942
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-boolean v1, v1, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v1, :cond_30

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

    .line 945
    .local v8, "rel":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v5, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->relationPartner:I

    if-lez v2, :cond_33

    const-string v10, "relation"

    :goto_5
    invoke-direct/range {v5 .. v10}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    .end local v8    # "rel":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->langs:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 948
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080210

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->langs:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->relatives:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 951
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->relatives:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_34

    .line 974
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

    if-eqz v1, :cond_11

    .line 975
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 977
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08008b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->mobilePhone:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 979
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080090

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->mobilePhone:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "mobilePhone"

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->homePhone:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 981
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08008f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->homePhone:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "homePhone"

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->skype:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 983
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->skype:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "skype"

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 984
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->instagram:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 985
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080312

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->instagram:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "instagram"

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 986
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->twitter:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 987
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->twitter:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "twitter"

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 988
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->facebookName:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 989
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->facebookName:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "facebook"

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 990
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->website:Ljava/lang/String;

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->website:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_10

    .line 991
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080166

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->website:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "website"

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 992
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->livejournal:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 993
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->livejournal:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "livejournal"

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->schools:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->universities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_14

    .line 996
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->schools:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 1021
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->universities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_46

    .line 1035
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->religion:Ljava/lang/String;

    if-eqz v1, :cond_15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->religion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_17

    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->inspiredBy:Ljava/lang/String;

    if-eqz v1, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->inspiredBy:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->political:I

    if-gtz v1, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->lifeMain:I

    if-gtz v1, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->peopleMain:I

    if-gtz v1, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->smoking:I

    if-gtz v1, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->alcohol:I

    if-lez v1, :cond_1e

    .line 1036
    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080208

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->political:I

    if-lez v1, :cond_18

    .line 1038
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    .line 1039
    .local v22, "opts":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->political:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v22

    array-length v2, v0

    if-ge v1, v2, :cond_18

    .line 1040
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080209

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->political:I

    add-int/lit8 v2, v2, -0x1

    aget-object v17, v22, v2

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    .end local v22    # "opts":[Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->religion:Ljava/lang/String;

    if-eqz v1, :cond_19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->religion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_19

    .line 1043
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08020a

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

    .line 1044
    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->lifeMain:I

    if-lez v1, :cond_1a

    .line 1045
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    .line 1046
    .restart local v22    # "opts":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->lifeMain:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v22

    array-length v2, v0

    if-ge v1, v2, :cond_1a

    .line 1047
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08020b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->lifeMain:I

    add-int/lit8 v2, v2, -0x1

    aget-object v17, v22, v2

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1049
    .end local v22    # "opts":[Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->peopleMain:I

    if-lez v1, :cond_1b

    .line 1050
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    .line 1051
    .restart local v22    # "opts":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->peopleMain:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v22

    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 1052
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08020c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->peopleMain:I

    add-int/lit8 v2, v2, -0x1

    aget-object v17, v22, v2

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1054
    .end local v22    # "opts":[Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->smoking:I

    if-lez v1, :cond_1c

    .line 1055
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    .line 1056
    .restart local v22    # "opts":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->smoking:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v22

    array-length v2, v0

    if-ge v1, v2, :cond_1c

    .line 1057
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08020d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->smoking:I

    add-int/lit8 v2, v2, -0x1

    aget-object v17, v22, v2

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1059
    .end local v22    # "opts":[Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->alcohol:I

    if-lez v1, :cond_1d

    .line 1060
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    .line 1061
    .restart local v22    # "opts":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->alcohol:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v22

    array-length v2, v0

    if-ge v1, v2, :cond_1d

    .line 1062
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08020e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->alcohol:I

    add-int/lit8 v2, v2, -0x1

    aget-object v17, v22, v2

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1064
    .end local v22    # "opts":[Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->inspiredBy:Ljava/lang/String;

    if-eqz v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->inspiredBy:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1e

    .line 1065
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08020f

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

    .line 1067
    :cond_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->activities:Ljava/lang/String;

    if-nez v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->interests:Ljava/lang/String;

    if-nez v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->music:Ljava/lang/String;

    if-nez v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->movies:Ljava/lang/String;

    if-nez v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->tv:Ljava/lang/String;

    if-nez v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->books:Ljava/lang/String;

    if-nez v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->games:Ljava/lang/String;

    if-nez v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->quotations:Ljava/lang/String;

    if-nez v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->about:Ljava/lang/String;

    if-eqz v1, :cond_28

    .line 1068
    :cond_1f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1069
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->activities:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 1070
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801aa

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

    .line 1071
    :cond_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->interests:Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 1072
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801ab

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

    .line 1073
    :cond_21
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->music:Ljava/lang/String;

    if-eqz v1, :cond_22

    .line 1074
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801ac

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

    .line 1075
    :cond_22
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->movies:Ljava/lang/String;

    if-eqz v1, :cond_23

    .line 1076
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801ad

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

    .line 1077
    :cond_23
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->tv:Ljava/lang/String;

    if-eqz v1, :cond_24

    .line 1078
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801ae

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

    .line 1079
    :cond_24
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->books:Ljava/lang/String;

    if-eqz v1, :cond_25

    .line 1080
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801b0

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

    .line 1081
    :cond_25
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->games:Ljava/lang/String;

    if-eqz v1, :cond_26

    .line 1082
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801af

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

    .line 1083
    :cond_26
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->quotations:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 1084
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801b1

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

    .line 1085
    :cond_27
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->about:Ljava/lang/String;

    if-eqz v1, :cond_28

    .line 1086
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801b2

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

    .line 1088
    :cond_28
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    const-string v2, "pages"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    const-string v2, "pages"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v2, v1

    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    const-string v3, "subscriptions"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    const-string v3, "subscriptions"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_a
    add-int v24, v2, v1

    .line 1089
    .local v24, "subscriptions":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    const-string v2, "groups"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    const-string v2, "groups"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 1090
    .local v21, "groups":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    const-string v2, "docs"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    const-string v2, "docs"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 1091
    .local v20, "docs":I
    :goto_c
    if-gtz v24, :cond_29

    if-gtz v21, :cond_29

    if-lez v20, :cond_2c

    .line 1092
    :cond_29
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    if-lez v24, :cond_2a

    .line 1094
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0802a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const-string v19, "subscriptions"

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1095
    :cond_2a
    if-lez v21, :cond_2b

    .line 1096
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const-string v19, "groups"

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1097
    :cond_2b
    if-lez v20, :cond_2c

    .line 1098
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080119

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const-string v19, "docs"

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1121
    .end local v21    # "groups":I
    .end local v24    # "subscriptions":I
    :cond_2c
    :goto_d
    return-void

    .line 924
    .end local v20    # "docs":I
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08022f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_2e
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 933
    :cond_2f
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

    .line 942
    .end local v4    # "bd":Ljava/lang/String;
    :cond_30
    const v1, 0x7f0d0039

    goto/16 :goto_3

    .line 944
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-boolean v1, v1, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v1, :cond_32

    const v1, 0x7f0d0012

    :goto_e
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
    :cond_32
    const v1, 0x7f0d0011

    goto :goto_e

    .line 945
    .restart local v8    # "rel":Ljava/lang/String;
    :cond_33
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 952
    .end local v8    # "rel":Ljava/lang/String;
    :cond_34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;

    .line 953
    .local v8, "rel":Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;
    const/16 v25, 0x0

    .line 954
    .local v25, "typeRes":I
    iget v2, v8, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->type:I

    packed-switch v2, :pswitch_data_0

    .line 971
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v0, v25

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

    .line 956
    :pswitch_0
    iget-object v2, v8, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->user:Lcom/vkontakte/android/UserProfile;

    iget-boolean v2, v2, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_35

    const v25, 0x7f0801b9

    .line 957
    :goto_10
    goto :goto_f

    .line 956
    :cond_35
    const v25, 0x7f0801b8

    goto :goto_10

    .line 959
    :pswitch_1
    iget-object v2, v8, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->user:Lcom/vkontakte/android/UserProfile;

    iget-boolean v2, v2, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_36

    const v25, 0x7f0801b7

    .line 960
    :goto_11
    goto :goto_f

    .line 959
    :cond_36
    const v25, 0x7f0801b6

    goto :goto_11

    .line 962
    :pswitch_2
    iget-object v2, v8, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->user:Lcom/vkontakte/android/UserProfile;

    iget-boolean v2, v2, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_37

    const v25, 0x7f0801b5

    .line 963
    :goto_12
    goto :goto_f

    .line 962
    :cond_37
    const v25, 0x7f0801b4

    goto :goto_12

    .line 965
    :pswitch_3
    iget-object v2, v8, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->user:Lcom/vkontakte/android/UserProfile;

    iget-boolean v2, v2, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_38

    const v25, 0x7f0801bb

    .line 966
    :goto_13
    goto/16 :goto_f

    .line 965
    :cond_38
    const v25, 0x7f0801ba

    goto :goto_13

    .line 968
    :pswitch_4
    iget-object v2, v8, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->user:Lcom/vkontakte/android/UserProfile;

    iget-boolean v2, v2, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_39

    const v25, 0x7f0801bd

    :goto_14
    goto/16 :goto_f

    :cond_39
    const v25, 0x7f0801bc

    goto :goto_14

    .line 997
    .end local v8    # "rel":Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;
    .end local v25    # "typeRes":I
    :cond_3a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/vkontakte/android/api/ExtendedUserProfile$School;

    .line 998
    .local v23, "s":Lcom/vkontakte/android/api/ExtendedUserProfile$School;
    if-eqz v23, :cond_13

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->name:Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 999
    move-object/from16 v0, v23

    iget-object v12, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->name:Ljava/lang/String;

    .line 1000
    .local v12, "title":Ljava/lang/String;
    move-object/from16 v0, v23

    iget v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->graduation:I

    if-lez v2, :cond_3b

    .line 1001
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

    .line 1003
    :cond_3b
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->city:Ljava/lang/String;

    if-eqz v2, :cond_45

    move-object/from16 v0, v23

    iget-object v13, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->city:Ljava/lang/String;

    .line 1004
    .local v13, "subtitle":Ljava/lang/String;
    :goto_15
    move-object/from16 v0, v23

    iget v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->from:I

    if-gtz v2, :cond_3c

    move-object/from16 v0, v23

    iget v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->to:I

    if-lez v2, :cond_3d

    :cond_3c
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3d

    .line 1005
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1006
    :cond_3d
    move-object/from16 v0, v23

    iget v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->from:I

    if-lez v2, :cond_3e

    .line 1007
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget v3, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->from:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1008
    :cond_3e
    move-object/from16 v0, v23

    iget v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->from:I

    if-lez v2, :cond_3f

    move-object/from16 v0, v23

    iget v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->to:I

    if-lez v2, :cond_3f

    .line 1009
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1010
    :cond_3f
    move-object/from16 v0, v23

    iget v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->to:I

    if-lez v2, :cond_40

    .line 1011
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget v3, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->to:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1012
    :cond_40
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->className:Ljava/lang/String;

    if-eqz v2, :cond_41

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->className:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_41

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1013
    :cond_41
    if-eqz v13, :cond_42

    .line 1014
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 1015
    :cond_42
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->speciality:Ljava/lang/String;

    if-eqz v2, :cond_44

    .line 1016
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_43

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1017
    :cond_43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->speciality:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1019
    :cond_44
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x0

    move-object/from16 v0, v23

    iget-object v11, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->type:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 1003
    .end local v13    # "subtitle":Ljava/lang/String;
    :cond_45
    const-string v13, ""

    goto/16 :goto_15

    .line 1021
    .end local v12    # "title":Ljava/lang/String;
    .end local v23    # "s":Lcom/vkontakte/android/api/ExtendedUserProfile$School;
    :cond_46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/api/ExtendedUserProfile$University;

    .line 1022
    .local v26, "u":Lcom/vkontakte/android/api/ExtendedUserProfile$University;
    move-object/from16 v0, v26

    iget-object v12, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->name:Ljava/lang/String;

    .line 1023
    .restart local v12    # "title":Ljava/lang/String;
    move-object/from16 v0, v26

    iget v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->graduation:I

    if-lez v2, :cond_47

    .line 1024
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

    move-object/from16 v0, v26

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

    .line 1026
    :cond_47
    const-string v13, ""

    .line 1027
    .restart local v13    # "subtitle":Ljava/lang/String;
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->faculty:Ljava/lang/String;

    if-eqz v2, :cond_48

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->faculty:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1028
    :cond_48
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->chair:Ljava/lang/String;

    if-eqz v2, :cond_4a

    .line 1029
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_49

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1030
    :cond_49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->chair:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1032
    :cond_4a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f08008e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 1088
    .end local v12    # "title":Ljava/lang/String;
    .end local v13    # "subtitle":Ljava/lang/String;
    .end local v26    # "u":Lcom/vkontakte/android/api/ExtendedUserProfile$University;
    :cond_4b
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_9

    :cond_4c
    const/4 v1, 0x0

    goto/16 :goto_a

    .line 1089
    .restart local v24    # "subscriptions":I
    :cond_4d
    const/16 v21, 0x0

    goto/16 :goto_b

    .line 1090
    .restart local v21    # "groups":I
    :cond_4e
    const/16 v20, 0x0

    goto/16 :goto_c

    .line 1102
    .end local v21    # "groups":I
    .end local v24    # "subscriptions":I
    :cond_4f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->about:Ljava/lang/String;

    if-eqz v1, :cond_50

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->about:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_50

    .line 1103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080165

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

    .line 1104
    :cond_50
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->website:Ljava/lang/String;

    if-eqz v1, :cond_51

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->website:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_51

    .line 1105
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080166

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

    .line 1106
    :cond_51
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->eventStartTime:I

    if-lez v1, :cond_52

    .line 1107
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080167

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

    .line 1108
    :cond_52
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->eventEndTime:I

    if-lez v1, :cond_53

    .line 1109
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080168

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

    .line 1110
    :cond_53
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    if-eqz v1, :cond_54

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_54

    .line 1111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080169

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

    if-eqz v2, :cond_56

    const-string v19, "place"

    :goto_16
    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1112
    :cond_54
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->mobilePhone:Ljava/lang/String;

    if-eqz v1, :cond_55

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->mobilePhone:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_55

    .line 1113
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

    .line 1114
    :cond_55
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    const-string v2, "docs"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    const-string v2, "docs"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 1115
    .restart local v20    # "docs":I
    :goto_17
    if-lez v20, :cond_2c

    .line 1116
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    if-lez v20, :cond_2c

    .line 1118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ProfileView;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/ProfileView$InfoItem;

    const/4 v15, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080119

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const-string v19, "docs"

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/ProfileView$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 1111
    .end local v20    # "docs":I
    :cond_56
    const/16 v19, 0x0

    goto/16 :goto_16

    .line 1114
    :cond_57
    const/16 v20, 0x0

    goto :goto_17

    .line 954
    nop

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
    .line 1632
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    if-nez v1, :cond_0

    .line 1636
    :goto_0
    return-void

    .line 1633
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1634
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

    .line 1635
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0801cb

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
    .line 1407
    new-instance v0, Lcom/vkontakte/android/api/FriendsAdd;

    iget v1, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    invoke-direct {v0, v1, p1}, Lcom/vkontakte/android/api/FriendsAdd;-><init>(ILjava/lang/String;)V

    .line 1408
    new-instance v1, Lcom/vkontakte/android/ProfileView$22;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/ProfileView$22;-><init>(Lcom/vkontakte/android/ProfileView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FriendsAdd;->setCallback(Lcom/vkontakte/android/api/FriendsAdd$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1475
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1476
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 1477
    return-void
.end method

.method private doLeaveGroup()V
    .locals 2

    .prologue
    .line 1564
    new-instance v0, Lcom/vkontakte/android/api/GroupsLeave;

    iget v1, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    neg-int v1, v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/GroupsLeave;-><init>(I)V

    .line 1565
    new-instance v1, Lcom/vkontakte/android/ProfileView$27;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileView$27;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/GroupsLeave;->setCallback(Lcom/vkontakte/android/api/GroupsLeave$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1582
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1583
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 1584
    return-void
.end method

.method private doRemoveFriend()V
    .locals 2

    .prologue
    .line 1516
    new-instance v0, Lcom/vkontakte/android/api/FriendsDelete;

    iget v1, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/FriendsDelete;-><init>(I)V

    .line 1517
    new-instance v1, Lcom/vkontakte/android/ProfileView$25;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileView$25;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FriendsDelete;->setCallback(Lcom/vkontakte/android/api/FriendsDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1541
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1542
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 1543
    return-void
.end method

.method private doToggleBlacklist()V
    .locals 3

    .prologue
    .line 1660
    new-instance v1, Lcom/vkontakte/android/api/AccountBanUser;

    iget v2, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->blacklisted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/vkontakte/android/api/AccountBanUser;-><init>(IZ)V

    .line 1661
    new-instance v0, Lcom/vkontakte/android/ProfileView$29;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ProfileView$29;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/AccountBanUser;->setCallback(Lcom/vkontakte/android/api/AccountBanUser$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 1674
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1675
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 1676
    return-void

    .line 1660
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private joinGroup(Z)V
    .locals 3
    .param p1, "sure"    # Z

    .prologue
    .line 1480
    new-instance v1, Lcom/vkontakte/android/api/GroupsJoin;

    iget v0, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    neg-int v2, v0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/vkontakte/android/api/GroupsJoin;-><init>(IZ)V

    .line 1481
    new-instance v0, Lcom/vkontakte/android/ProfileView$23;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ProfileView$23;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/GroupsJoin;->setCallback(Lcom/vkontakte/android/api/GroupsJoin$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1497
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1498
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 1499
    return-void

    .line 1480
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private leaveGroup()V
    .locals 3

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupAccess:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1547
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->doLeaveGroup()V

    .line 1561
    :goto_0
    return-void

    .line 1550
    :cond_1
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1551
    const v1, 0x7f08012b

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1552
    const v1, 0x7f08012e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1553
    const v1, 0x7f08004e

    new-instance v2, Lcom/vkontakte/android/ProfileView$26;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ProfileView$26;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1559
    const v1, 0x7f08004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1560
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private openAudioStatus()V
    .locals 5

    .prologue
    .line 910
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 911
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 912
    const-string v1, "act_uid"

    iget v2, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 913
    const-string v1, "list"

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/vkontakte/android/AudioFile;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v4, v4, Lcom/vkontakte/android/api/ExtendedUserProfile;->audioStatus:Lcom/vkontakte/android/AudioFile;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 914
    const-string v1, "referer"

    const-string v2, "status"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 915
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 916
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 917
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "action"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 918
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 919
    return-void
.end method

.method private openInBrowser()V
    .locals 5

    .prologue
    .line 1639
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

    .line 1640
    return-void
.end method

.method private removeFriend()V
    .locals 7

    .prologue
    .line 1502
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1503
    const v1, 0x7f0800ec

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1504
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800ed

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

    .line 1505
    const v1, 0x7f08004e

    new-instance v2, Lcom/vkontakte/android/ProfileView$24;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ProfileView$24;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1511
    const v1, 0x7f08004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1512
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1513
    return-void
.end method

.method private setStatus(Ljava/lang/String;)V
    .locals 2
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 1368
    new-instance v0, Lcom/vkontakte/android/api/StatusSet;

    invoke-direct {v0, p1}, Lcom/vkontakte/android/api/StatusSet;-><init>(Ljava/lang/String;)V

    .line 1369
    new-instance v1, Lcom/vkontakte/android/ProfileView$20;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/ProfileView$20;-><init>(Lcom/vkontakte/android/ProfileView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/StatusSet;->setCallback(Lcom/vkontakte/android/api/StatusSet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1385
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1386
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 1387
    return-void
.end method

.method private showNewPost()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1329
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1330
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uid"

    iget v2, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1331
    iget v1, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    if-gez v1, :cond_1

    .line 1332
    const-string v1, "group_title"

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1333
    const-string v1, "group_photo"

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1334
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->canSeeAllPosts:Z

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "public"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1336
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    if-nez v1, :cond_2

    const-string v1, "suggest"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1337
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1338
    return-void
.end method

.method private showStatusEditDlg(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1341
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1342
    .local v1, "ed":Landroid/widget/EditText;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLines(I)V

    .line 1343
    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 1344
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1345
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1346
    new-instance v2, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1347
    const v3, 0x7f08009f

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1348
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1349
    const v3, 0x7f0800a0

    new-instance v4, Lcom/vkontakte/android/ProfileView$18;

    invoke-direct {v4, p0, v1}, Lcom/vkontakte/android/ProfileView$18;-><init>(Lcom/vkontakte/android/ProfileView;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1355
    const v3, 0x7f080041

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1356
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1357
    .local v0, "dlg":Landroid/app/AlertDialog;
    new-instance v2, Lcom/vkontakte/android/ProfileView$19;

    invoke-direct {v2, p0, v1}, Lcom/vkontakte/android/ProfileView$19;-><init>(Lcom/vkontakte/android/ProfileView;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1364
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1365
    return-void
.end method

.method private switchOwnerOnly(Z)V
    .locals 4
    .param p1, "owner"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1316
    iget-boolean v2, p0, Lcom/vkontakte/android/ProfileView;->ownerOnly:Z

    if-eq p1, v2, :cond_0

    iget-boolean v2, p0, Lcom/vkontakte/android/ProfileView;->dataLoading:Z

    if-eqz v2, :cond_1

    .line 1326
    :cond_0
    :goto_0
    return-void

    .line 1317
    :cond_1
    iput-boolean p1, p0, Lcom/vkontakte/android/ProfileView;->ownerOnly:Z

    .line 1318
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ProfileView;->loadData(Z)V

    .line 1319
    iget-object v2, p0, Lcom/vkontakte/android/ProfileView;->selector:Landroid/view/View;

    const v3, 0x7f09017d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 1320
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->selector:Landroid/view/View;

    const v2, 0x7f09017e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 1321
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->selector:Landroid/view/View;

    const v2, 0x7f09017f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1322
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->selector:Landroid/view/View;

    const v2, 0x7f090180

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private toggleBlacklist()V
    .locals 7

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->blacklisted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->doToggleBlacklist()V

    .line 1657
    :goto_0
    return-void

    .line 1645
    :cond_0
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1646
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080371

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

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1647
    const v1, 0x7f08007e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1648
    const v1, 0x7f08004e

    new-instance v2, Lcom/vkontakte/android/ProfileView$28;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ProfileView$28;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1654
    const v1, 0x7f08004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1655
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

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

    .line 1124
    iget-boolean v1, p0, Lcom/vkontakte/android/ProfileView;->showExtended:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/vkontakte/android/ProfileView;->showExtended:Z

    .line 1125
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v6, 0x7f090174

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1126
    .local v7, "arrow":Landroid/view/View;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v1, v6, :cond_3

    .line 1127
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

    .line 1134
    :goto_3
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView;->infoAdapter:Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;

    invoke-virtual {v1}, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->notifyDataSetChanged()V

    .line 1135
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 1136
    return-void

    .end local v7    # "arrow":Landroid/view/View;
    :cond_0
    move v1, v3

    .line 1124
    goto :goto_0

    .restart local v7    # "arrow":Landroid/view/View;
    :cond_1
    move v1, v5

    .line 1127
    goto :goto_1

    :cond_2
    move v5, v2

    goto :goto_2

    .line 1129
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

    .line 1130
    .local v0, "anim":Landroid/view/animation/RotateAnimation;
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 1131
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 1132
    invoke-virtual {v7, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    .end local v0    # "anim":Landroid/view/animation/RotateAnimation;
    :cond_4
    move v1, v5

    .line 1129
    goto :goto_4

    :cond_5
    move v5, v2

    goto :goto_5
.end method

.method private updateButtons()V
    .locals 13

    .prologue
    .line 1139
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1140
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 1255
    :cond_0
    :goto_0
    return-void

    .line 1141
    :cond_1
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->buttonsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    .line 1142
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->buttonsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1143
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->buttonsWrap:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1145
    :cond_2
    iget v7, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    if-lez v7, :cond_9

    .line 1146
    const/4 v0, 0x0

    .line 1147
    .local v0, "firstButton":Landroid/widget/Button;
    const/4 v1, 0x0

    .line 1148
    .local v1, "friendStatus":Ljava/lang/String;
    iget v7, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    if-ne v7, v8, :cond_10

    .line 1149
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f03002a

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "firstButton":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 1150
    .restart local v0    # "firstButton":Landroid/widget/Button;
    const v7, 0x7f0801c6

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    .line 1151
    const-string v7, "post"

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1153
    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1154
    .local v5, "secondButton":Landroid/widget/ImageView;
    const v7, 0x7f0201bc

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1155
    const v7, 0x7f0200b7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1156
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1157
    const-string v7, "photo"

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1158
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42600000    # 56.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    const/high16 v8, 0x42280000    # 42.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1159
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_4

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1160
    :cond_4
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1161
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1179
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "secondButton":Landroid/widget/ImageView;
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 1180
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/high16 v11, 0x42280000    # 42.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v0, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1181
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1183
    :cond_6
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->canWrite:Z

    if-eqz v7, :cond_8

    iget v7, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    if-eqz v7, :cond_8

    iget v7, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    if-eq v7, v8, :cond_8

    .line 1184
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f03002a

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 1185
    .local v5, "secondButton":Landroid/widget/Button;
    const v7, 0x7f080091

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setText(I)V

    .line 1186
    const-string v7, "message"

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1187
    invoke-virtual {v5}, Landroid/widget/Button;->setSingleLine()V

    .line 1188
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1189
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/high16 v8, 0x42280000    # 42.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1190
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_7

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1191
    :cond_7
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1192
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1194
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "secondButton":Landroid/widget/Button;
    :cond_8
    if-eqz v1, :cond_9

    .line 1195
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1196
    .local v2, "fs":Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1197
    const v7, -0x414040

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1198
    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    .line 1199
    .local v4, "pad":I
    const/4 v7, 0x0

    invoke-virtual {v2, v4, v4, v4, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1200
    const/high16 v7, 0x41700000    # 15.0f

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1201
    const/16 v7, 0x11

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 1202
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->buttonsWrap:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1205
    .end local v0    # "firstButton":Landroid/widget/Button;
    .end local v1    # "friendStatus":Ljava/lang/String;
    .end local v2    # "fs":Landroid/widget/TextView;
    .end local v4    # "pad":I
    :cond_9
    iget v7, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    if-gez v7, :cond_f

    .line 1206
    const/4 v6, 0x0

    .line 1207
    .local v6, "writeButton":Landroid/widget/Button;
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->canSeeAllPosts:Z

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_b

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    :cond_a
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    if-eqz v7, :cond_b

    .line 1208
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f03002a

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .end local v6    # "writeButton":Landroid/widget/Button;
    check-cast v6, Landroid/widget/Button;

    .line 1209
    .restart local v6    # "writeButton":Landroid/widget/Button;
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    if-eqz v7, :cond_15

    const v7, 0x7f0801c6

    :goto_2
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 1210
    const-string v7, "post"

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1211
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1212
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/high16 v10, 0x42280000    # 42.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1214
    :cond_b
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1c

    .line 1215
    :cond_c
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    if-nez v7, :cond_17

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupAccess:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_d

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_17

    .line 1216
    :cond_d
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f03002a

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1217
    .restart local v0    # "firstButton":Landroid/widget/Button;
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupAccess:I

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_16

    :cond_e
    const v7, 0x7f08012a

    :goto_3
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    .line 1218
    const-string v7, "join"

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1219
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1220
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/high16 v10, 0x42280000    # 42.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1251
    .end local v0    # "firstButton":Landroid/widget/Button;
    .end local v6    # "writeButton":Landroid/widget/Button;
    :cond_f
    :goto_4
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v7

    instance-of v7, v7, Lcom/actionbarsherlock/app/SherlockActivity;

    if-eqz v7, :cond_1d

    .line 1252
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/actionbarsherlock/app/SherlockActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockActivity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 1162
    .restart local v0    # "firstButton":Landroid/widget/Button;
    .restart local v1    # "friendStatus":Ljava/lang/String;
    :cond_10
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    if-nez v7, :cond_11

    .line 1163
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f03002a

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "firstButton":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 1164
    .restart local v0    # "firstButton":Landroid/widget/Button;
    const v7, 0x7f080092

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    .line 1165
    const-string v7, "add"

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1166
    :cond_11
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_12

    .line 1167
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f03002a

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "firstButton":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 1168
    .restart local v0    # "firstButton":Landroid/widget/Button;
    const v7, 0x7f0801c5

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    .line 1169
    const-string v7, "cancel"

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1170
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0801c1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->firstNameDat:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1171
    goto/16 :goto_1

    :cond_12
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_14

    .line 1172
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f03002a

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "firstButton":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 1173
    .restart local v0    # "firstButton":Landroid/widget/Button;
    const v7, 0x7f0801c4

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    .line 1174
    const-string v7, "accept"

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1175
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-boolean v7, v7, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v7, :cond_13

    const v7, 0x7f0801c3

    :goto_5
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v8, v7, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1176
    goto/16 :goto_1

    .line 1175
    :cond_13
    const v7, 0x7f0801c2

    goto :goto_5

    .line 1176
    :cond_14
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_5

    .line 1177
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0801c0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1209
    .end local v0    # "firstButton":Landroid/widget/Button;
    .end local v1    # "friendStatus":Ljava/lang/String;
    .restart local v6    # "writeButton":Landroid/widget/Button;
    :cond_15
    const v7, 0x7f080300

    goto/16 :goto_2

    .line 1217
    .restart local v0    # "firstButton":Landroid/widget/Button;
    :cond_16
    const v7, 0x7f08012c

    goto/16 :goto_3

    .line 1221
    .end local v0    # "firstButton":Landroid/widget/Button;
    :cond_17
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1a

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupAccess:I

    if-eqz v7, :cond_18

    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1a

    .line 1222
    :cond_18
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f03002a

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1223
    .restart local v0    # "firstButton":Landroid/widget/Button;
    const v7, 0x7f0801c7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    .line 1224
    const-string v7, "join"

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1225
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1226
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/high16 v10, 0x42280000    # 42.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1227
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f03002a

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 1228
    .restart local v5    # "secondButton":Landroid/widget/Button;
    const v7, 0x7f0801c8

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setText(I)V

    .line 1229
    const-string v7, "join_unsure"

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1230
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1231
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/high16 v8, 0x42280000    # 42.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1232
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_19

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1233
    :cond_19
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 1234
    .end local v0    # "firstButton":Landroid/widget/Button;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "secondButton":Landroid/widget/Button;
    :cond_1a
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_f

    .line 1235
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f03002a

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1236
    .restart local v0    # "firstButton":Landroid/widget/Button;
    const v7, 0x7f08012d

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    .line 1237
    const-string v7, "join"

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1238
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1239
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/high16 v8, 0x42280000    # 42.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1240
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v6, :cond_1b

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1241
    :cond_1b
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 1243
    .end local v0    # "firstButton":Landroid/widget/Button;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1c
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_f

    .line 1244
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f03002a

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1245
    .restart local v0    # "firstButton":Landroid/widget/Button;
    const v7, 0x7f0801c5

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    .line 1246
    const-string v7, "leave"

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1247
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1248
    iget-object v7, p0, Lcom/vkontakte/android/ProfileView;->buttons:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/high16 v10, 0x42280000    # 42.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 1253
    .end local v0    # "firstButton":Landroid/widget/Button;
    .end local v6    # "writeButton":Landroid/widget/Button;
    :cond_1d
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v7

    instance-of v7, v7, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    if-eqz v7, :cond_0

    .line 1254
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->invalidateOptionsMenu()V

    goto/16 :goto_0
.end method

.method private updateCounters()V
    .locals 14

    .prologue
    .line 1258
    iget-object v10, p0, Lcom/vkontakte/android/ProfileView;->countersWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1261
    iget v10, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    if-eqz v10, :cond_0

    iget v10, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    sget v11, Lcom/vkontakte/android/Global;->uid:I

    if-ne v10, v11, :cond_3

    .line 1262
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

    .line 1263
    .local v2, "cntrs":[Ljava/lang/String;
    const/4 v10, 0x6

    new-array v8, v10, [I

    fill-array-data v8, :array_0

    .line 1271
    .local v8, "titleRes":[I
    :goto_0
    const/4 v6, 0x0

    .line 1272
    .local v6, "n":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v10, v10, 0xf

    const/4 v11, 0x3

    if-lt v10, v11, :cond_6

    iget-object v10, p0, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v10}, Lcom/vkontakte/android/ui/RefreshableListView;->getWidth()I

    move-result v10

    iget-object v11, p0, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v11}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeight()I

    move-result v11

    if-le v10, v11, :cond_6

    const/4 v9, 0x0

    .line 1273
    .local v9, "twoRow":Z
    :goto_1
    iget-object v3, p0, Lcom/vkontakte/android/ProfileView;->countersWrap:Landroid/widget/LinearLayout;

    .line 1274
    .local v3, "curLayout":Landroid/widget/LinearLayout;
    if-eqz v9, :cond_7

    .line 1275
    iget-object v10, p0, Lcom/vkontakte/android/ProfileView;->countersWrap:Landroid/widget/LinearLayout;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1276
    new-instance v3, Landroid/widget/LinearLayout;

    .end local v3    # "curLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1277
    .restart local v3    # "curLayout":Landroid/widget/LinearLayout;
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1278
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v5, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1279
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v10, 0x41000000    # 8.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1280
    iget-object v10, p0, Lcom/vkontakte/android/ProfileView;->countersWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1284
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    const/4 v10, 0x6

    if-ge v6, v10, :cond_1

    array-length v10, v2

    if-lt v4, v10, :cond_8

    .line 1305
    :cond_1
    rem-int/lit8 v10, v6, 0x3

    if-eqz v10, :cond_2

    .line 1306
    rem-int/lit8 v10, v6, 0x3

    rsub-int/lit8 v7, v10, 0x3

    .line 1307
    .local v7, "nn":I
    const/4 v4, 0x0

    :goto_4
    if-lt v4, v7, :cond_f

    .line 1313
    .end local v7    # "nn":I
    :cond_2
    return-void

    .line 1264
    .end local v2    # "cntrs":[Ljava/lang/String;
    .end local v3    # "curLayout":Landroid/widget/LinearLayout;
    .end local v4    # "i":I
    .end local v6    # "n":I
    .end local v8    # "titleRes":[I
    .end local v9    # "twoRow":Z
    :cond_3
    iget v10, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    if-gez v10, :cond_5

    .line 1265
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

    .line 1266
    .restart local v2    # "cntrs":[Ljava/lang/String;
    const/4 v10, 0x6

    new-array v8, v10, [I

    const/4 v11, 0x0

    iget-object v10, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    const/4 v12, 0x2

    if-ne v10, v12, :cond_4

    const v10, 0x7f0d0043

    :goto_5
    aput v10, v8, v11

    const/4 v10, 0x1

    const v11, 0x7f0d004a

    aput v11, v8, v10

    const/4 v10, 0x2

    const v11, 0x7f0d0048

    aput v11, v8, v10

    const/4 v10, 0x3

    const v11, 0x7f0d0044

    aput v11, v8, v10

    const/4 v10, 0x4

    const v11, 0x7f0d0046

    aput v11, v8, v10

    const/4 v10, 0x5

    const v11, 0x7f0d0045

    aput v11, v8, v10

    .line 1267
    .restart local v8    # "titleRes":[I
    goto/16 :goto_0

    .line 1266
    .end local v8    # "titleRes":[I
    :cond_4
    const v10, 0x7f0d0049

    goto :goto_5

    .line 1268
    .end local v2    # "cntrs":[Ljava/lang/String;
    :cond_5
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

    .line 1269
    .restart local v2    # "cntrs":[Ljava/lang/String;
    const/4 v10, 0x7

    new-array v8, v10, [I

    fill-array-data v8, :array_1

    .restart local v8    # "titleRes":[I
    goto/16 :goto_0

    .line 1272
    .restart local v6    # "n":I
    :cond_6
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 1282
    .restart local v3    # "curLayout":Landroid/widget/LinearLayout;
    .restart local v9    # "twoRow":Z
    :cond_7
    iget-object v10, p0, Lcom/vkontakte/android/ProfileView;->countersWrap:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_2

    .line 1285
    .restart local v4    # "i":I
    :cond_8
    iget-object v10, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    aget-object v11, v2, v4

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    aget-object v11, v2, v4

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lez v10, :cond_c

    .line 1286
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f030075

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/vkontakte/android/ProfileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1287
    .local v1, "cntr":Landroid/view/View;
    const v10, 0x7f09015e

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1289
    iget-object v10, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    aget-object v11, v2, v4

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1290
    .local v0, "c":I
    const v10, 0x7f09015e

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    aget v12, v8, v4

    const v11, 0x1869f

    if-le v0, v11, :cond_d

    const/4 v11, 0x7

    :goto_6
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-static {v12, v11, v13}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1291
    const v10, 0x7f09015d

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x1869f

    if-le v0, v11, :cond_e

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

    :goto_7
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1292
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/high16 v11, 0x42700000    # 60.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v5, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1293
    .restart local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-lez v6, :cond_a

    if-eqz v9, :cond_9

    const/4 v10, 0x3

    if-eq v6, v10, :cond_a

    :cond_9
    const/high16 v10, 0x41000000    # 8.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1294
    :cond_a
    if-eqz v9, :cond_b

    const/4 v10, 0x3

    if-ne v6, v10, :cond_b

    .line 1295
    new-instance v3, Landroid/widget/LinearLayout;

    .end local v3    # "curLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1296
    .restart local v3    # "curLayout":Landroid/widget/LinearLayout;
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1297
    iget-object v10, p0, Lcom/vkontakte/android/ProfileView;->countersWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1299
    :cond_b
    aget-object v10, v2, v4

    invoke-virtual {v1, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1300
    iget-object v10, p0, Lcom/vkontakte/android/ProfileView;->counterClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1301
    invoke-virtual {v3, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1302
    add-int/lit8 v6, v6, 0x1

    .line 1284
    .end local v0    # "c":I
    .end local v1    # "cntr":Landroid/view/View;
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .restart local v0    # "c":I
    .restart local v1    # "cntr":Landroid/view/View;
    :cond_d
    move v11, v0

    .line 1290
    goto :goto_6

    .line 1291
    :cond_e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    .line 1308
    .end local v0    # "c":I
    .end local v1    # "cntr":Landroid/view/View;
    .restart local v7    # "nn":I
    :cond_f
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/high16 v11, 0x42700000    # 60.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v5, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1309
    .restart local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-lez v4, :cond_11

    if-eqz v9, :cond_10

    const/4 v10, 0x3

    if-eq v4, v10, :cond_11

    :cond_10
    const/high16 v10, 0x41000000    # 8.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1310
    :cond_11
    new-instance v10, Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1307
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 1263
    nop

    :array_0
    .array-data 4
        0x7f0d0041
        0x7f0d0043
        0x7f0d0047
        0x7f0d0044
        0x7f0d0046
        0x7f0d0045
    .end array-data

    .line 1269
    :array_1
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
    .line 785
    move-object/from16 v0, p0

    iget v11, v0, Lcom/vkontakte/android/ProfileView;->uid:I

    if-lez v11, :cond_6

    .line 786
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v12, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v12, v12, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v12, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v12, v12, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 787
    .local v5, "name":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->verified:Z

    if-eqz v11, :cond_0

    .line 788
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 789
    .local v1, "bldr":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v11

    const-string v12, "F"

    invoke-virtual {v11, v12}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v8

    .line 790
    .local v8, "sp":Landroid/text/Spannable;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0201e6

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 791
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    invoke-virtual {v4, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 792
    new-instance v11, Landroid/text/style/ImageSpan;

    const/4 v12, 0x1

    invoke-direct {v11, v4, v12}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-interface {v8, v11, v12, v13, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 793
    const-string v11, "\u00a0"

    invoke-virtual {v1, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 794
    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 795
    move-object v5, v1

    .line 797
    .end local v1    # "bldr":Landroid/text/SpannableStringBuilder;
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    .end local v8    # "sp":Landroid/text/Spannable;
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v12, 0x7f090176

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v12, 0x7f090173

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v12, Lcom/vkontakte/android/api/ExtendedUserProfile;->activity:Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 828
    move-object/from16 v0, p0

    iget v11, v0, Lcom/vkontakte/android/ProfileView;->uid:I

    if-lez v11, :cond_8

    .line 829
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 830
    .local v9, "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->bYear:I

    if-lez v11, :cond_3

    .line 832
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 833
    .local v2, "c":Ljava/util/Calendar;
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 834
    .local v6, "now":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 835
    .local v3, "c2":Ljava/util/Calendar;
    const/4 v11, 0x5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v12, v12, Lcom/vkontakte/android/api/ExtendedUserProfile;->bDay:I

    invoke-virtual {v3, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 836
    const/4 v11, 0x2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v12, v12, Lcom/vkontakte/android/api/ExtendedUserProfile;->bMonth:I

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v3, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 837
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->bYear:I

    sub-int v10, v6, v11

    .line 838
    .local v10, "years":I
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 839
    add-int/lit8 v10, v10, -0x1

    .line 841
    :cond_2
    const v11, 0x7f0d004b

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {v11, v10, v12}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    .end local v2    # "c":Ljava/util/Calendar;
    .end local v3    # "c2":Ljava/util/Calendar;
    .end local v6    # "now":I
    .end local v10    # "years":I
    :cond_3
    const-string v11, ", "

    invoke-static {v11, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/vkontakte/android/ProfileView;->infoLine:Ljava/lang/String;

    .line 847
    .end local v9    # "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->activity:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_4

    .line 848
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v12, 0x7f090173

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ProfileView;->infoLine:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 850
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget v11, v11, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v11, :cond_9

    .line 851
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f08009b

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 852
    .local v7, "online":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget v11, v11, Lcom/vkontakte/android/UserProfile;->online:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_5

    .line 853
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 854
    .restart local v1    # "bldr":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v11

    const-string v12, "F"

    invoke-virtual {v11, v12}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v8

    .line 855
    .restart local v8    # "sp":Landroid/text/Spannable;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f020169

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 856
    .restart local v4    # "d":Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    invoke-virtual {v4, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 857
    new-instance v11, Landroid/text/style/ImageSpan;

    const/4 v12, 0x1

    invoke-direct {v11, v4, v12}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-interface {v8, v11, v12, v13, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 858
    const-string v11, "\u00a0"

    invoke-virtual {v1, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 859
    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 860
    move-object v7, v1

    .line 862
    .end local v1    # "bldr":Landroid/text/SpannableStringBuilder;
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    .end local v8    # "sp":Landroid/text/Spannable;
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v12, 0x7f090175

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    .end local v7    # "online":Ljava/lang/CharSequence;
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v12, 0x7f090175

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setSelected(Z)V

    .line 880
    return-void

    .line 799
    .end local v5    # "name":Ljava/lang/CharSequence;
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v5, v11, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 800
    .restart local v5    # "name":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->verified:Z

    if-eqz v11, :cond_7

    .line 801
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 802
    .restart local v1    # "bldr":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v11

    const-string v12, "F"

    invoke-virtual {v11, v12}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v8

    .line 803
    .restart local v8    # "sp":Landroid/text/Spannable;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0201e6

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 804
    .restart local v4    # "d":Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    invoke-virtual {v4, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 805
    new-instance v11, Landroid/text/style/ImageSpan;

    const/4 v12, 0x1

    invoke-direct {v11, v4, v12}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-interface {v8, v11, v12, v13, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 806
    const-string v11, "\u00a0"

    invoke-virtual {v1, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 807
    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 808
    move-object v5, v1

    .line 810
    .end local v1    # "bldr":Landroid/text/SpannableStringBuilder;
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    .end local v8    # "sp":Landroid/text/Spannable;
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v12, 0x7f090176

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 811
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v12, 0x7f090176

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->setSingleLine()V

    .line 812
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v12, 0x7f090176

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 813
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v12, 0x7f090176

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setSelected(Z)V

    .line 814
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v12, 0x7f090176

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 815
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v12, 0x7f090176

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const/high16 v12, 0x41200000    # 10.0f

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    goto/16 :goto_0

    .line 845
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->infoLine:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/vkontakte/android/ProfileView;->infoLine:Ljava/lang/String;

    goto/16 :goto_1

    .line 863
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastSeen:I

    if-lez v11, :cond_c

    .line 864
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-boolean v11, v11, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v11, :cond_b

    const v11, 0x7f0801a1

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

    move-result-object v7

    .line 865
    .restart local v7    # "online":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastSeenMobile:Z

    if-eqz v11, :cond_a

    .line 866
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 867
    .restart local v1    # "bldr":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v11

    const-string v12, "F"

    invoke-virtual {v11, v12}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v8

    .line 868
    .restart local v8    # "sp":Landroid/text/Spannable;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f020169

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 869
    .restart local v4    # "d":Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    invoke-virtual {v4, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 870
    new-instance v11, Landroid/text/style/ImageSpan;

    const/4 v12, 0x1

    invoke-direct {v11, v4, v12}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-interface {v8, v11, v12, v13, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 871
    const-string v11, "\u00a0"

    invoke-virtual {v1, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 872
    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 873
    move-object v7, v1

    .line 875
    .end local v1    # "bldr":Landroid/text/SpannableStringBuilder;
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    .end local v8    # "sp":Landroid/text/Spannable;
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v12, 0x7f090175

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 864
    .end local v7    # "online":Ljava/lang/CharSequence;
    :cond_b
    const v11, 0x7f0801a0

    goto :goto_3

    .line 877
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ProfileView;->headerView:Landroid/view/View;

    const v12, 0x7f090175

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const-string v12, ""

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private updatePostsButtons()V
    .locals 5

    .prologue
    const v4, 0x7f0900c6

    .line 772
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->headerItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView;->postponedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 773
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->headerItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView;->suggestsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 774
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->postponedCount:I

    if-lez v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->postponedView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d005f

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->postponedCount:I

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->headerItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView;->postponedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->suggestedCount:I

    if-lez v0, :cond_1

    .line 779
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->suggestsView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    if-eqz v1, :cond_2

    const v1, 0x7f0d0060

    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->suggestedCount:I

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->headerItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView;->suggestsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    :cond_1
    return-void

    .line 779
    :cond_2
    const v1, 0x7f0d0061

    goto :goto_0
.end method


# virtual methods
.method protected canHideFromFeed()Z
    .locals 1

    .prologue
    .line 883
    const/4 v0, 0x0

    return v0
.end method

.method protected createAdapter()Landroid/widget/ListAdapter;
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->lAdapter:Lcom/vkontakte/android/ui/MergeAdapter;

    if-nez v0, :cond_0

    .line 454
    new-instance v0, Lcom/vkontakte/android/ui/MergeAdapter;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/MergeAdapter;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->lAdapter:Lcom/vkontakte/android/ui/MergeAdapter;

    .line 455
    new-instance v0, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;-><init>(Lcom/vkontakte/android/ProfileView;Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;)V

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->infoAdapter:Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;

    .line 456
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->lAdapter:Lcom/vkontakte/android/ui/MergeAdapter;

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView;->infoAdapter:Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 457
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->lAdapter:Lcom/vkontakte/android/ui/MergeAdapter;

    invoke-super {p0}, Lcom/vkontakte/android/NewsView;->createAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->lAdapter:Lcom/vkontakte/android/ui/MergeAdapter;

    return-object v0
.end method

.method protected createImageLoaderAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .locals 3

    .prologue
    .line 463
    new-instance v0, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;-><init>()V

    .line 464
    .local v0, "la":Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;
    new-instance v1, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;-><init>(Lcom/vkontakte/android/ProfileView;Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->addAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 465
    invoke-super {p0}, Lcom/vkontakte/android/NewsView;->createImageLoaderAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->addAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 466
    return-object v0
.end method

.method protected getPostsOffset()I
    .locals 1

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->infoAdapter:Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/ProfileView$ProfileInfoAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method protected getReferer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    if-lez v0, :cond_0

    const-string v0, "wall_user"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "wall_group"

    goto :goto_0
.end method

.method public loadData(Z)V
    .locals 6
    .param p1, "refresh"    # Z

    .prologue
    const/4 v5, 0x0

    .line 592
    iget-boolean v0, p0, Lcom/vkontakte/android/ProfileView;->dataLoading:Z

    if-eqz v0, :cond_0

    .line 759
    :goto_0
    return-void

    .line 593
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ProfileView;->dataLoading:Z

    .line 595
    if-eqz p1, :cond_1

    .line 596
    const-string v0, "0"

    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->commentsFrom:Ljava/lang/String;

    .line 597
    iput v5, p0, Lcom/vkontakte/android/ProfileView;->offset:I

    .line 598
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->preloadedNews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 602
    :cond_1
    new-instance v0, Lcom/vkontakte/android/api/WallGet;

    iget v1, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    iget v2, p0, Lcom/vkontakte/android/ProfileView;->offset:I

    iget-boolean v4, p0, Lcom/vkontakte/android/ProfileView;->preloading:Z

    if-eqz v4, :cond_2

    const/16 v3, 0xa

    .local v3, "count":I
    :goto_1
    iget-boolean v4, p0, Lcom/vkontakte/android/ProfileView;->ownerOnly:Z

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/WallGet;-><init>(IIIZZ)V

    .line 603
    new-instance v1, Lcom/vkontakte/android/ProfileView$16;

    invoke-direct {v1, p0, p1, v3}, Lcom/vkontakte/android/ProfileView$16;-><init>(Lcom/vkontakte/android/ProfileView;ZI)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallGet;->setCallback(Lcom/vkontakte/android/api/WallGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 731
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 602
    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->currentReq:Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .end local v3    # "count":I
    :cond_2
    const/16 v3, 0x14

    goto :goto_1
.end method

.method public loadInitial(Z)V
    .locals 3
    .param p1, "refresh"    # Z

    .prologue
    .line 480
    if-nez p1, :cond_0

    .line 481
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->bigProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 484
    :cond_0
    new-instance v0, Lcom/vkontakte/android/api/GetFullProfile;

    iget v1, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/GetFullProfile;-><init>(II)V

    .line 485
    new-instance v1, Lcom/vkontakte/android/ProfileView$15;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileView$15;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/GetFullProfile;->setCallback(Lcom/vkontakte/android/api/GetFullProfile$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 588
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 484
    iput-object v0, p0, Lcom/vkontakte/android/ProfileView;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 589
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 8
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    const v7, 0x7f09021e

    const v6, 0x7f09021d

    const v5, 0x7f090220

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1587
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    if-nez v0, :cond_0

    .line 1602
    :goto_0
    return-void

    .line 1588
    :cond_0
    const v0, 0x7f0e0009

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 1589
    const v0, 0x7f09021c

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 1590
    const v0, 0x7f09021b

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 1591
    iget v0, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    if-lez v0, :cond_6

    .line 1592
    invoke-interface {p1, v7}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 1593
    invoke-interface {p1, v6}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v3, v3, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    :goto_3
    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 1594
    iget v0, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_1

    .line 1595
    invoke-interface {p1, v5}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 1596
    :cond_1
    invoke-interface {p1, v5}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->blacklisted:Z

    if-eqz v0, :cond_5

    const v0, 0x7f08023c

    :goto_4
    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setTitle(I)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1589
    goto :goto_1

    :cond_3
    move v0, v2

    .line 1590
    goto :goto_2

    :cond_4
    move v1, v2

    .line 1593
    goto :goto_3

    .line 1596
    :cond_5
    const v0, 0x7f08023b

    goto :goto_4

    .line 1598
    :cond_6
    invoke-interface {p1, v6}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 1599
    invoke-interface {p1, v7}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v3, v3, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    if-ne v3, v1, :cond_7

    :goto_5
    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 1600
    invoke-interface {p1, v5}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto/16 :goto_0

    :cond_7
    move v1, v2

    .line 1599
    goto :goto_5
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 396
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 1605
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1628
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1607
    :sswitch_0
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->removeFriend()V

    goto :goto_0

    .line 1610
    :sswitch_1
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->leaveGroup()V

    goto :goto_0

    .line 1613
    :sswitch_2
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->copyLink()V

    goto :goto_0

    .line 1616
    :sswitch_3
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->openInBrowser()V

    goto :goto_0

    .line 1619
    :sswitch_4
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->toggleBlacklist()V

    goto :goto_0

    .line 1622
    :sswitch_5
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->fragment:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->editProfile()V

    goto :goto_0

    .line 1625
    :sswitch_6
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->showNewPost()V

    goto :goto_0

    .line 1605
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090027 -> :sswitch_2
        0x7f09021b -> :sswitch_6
        0x7f09021c -> :sswitch_5
        0x7f09021d -> :sswitch_0
        0x7f09021e -> :sswitch_1
        0x7f09021f -> :sswitch_3
        0x7f090220 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1679
    invoke-super {p0}, Lcom/vkontakte/android/NewsView;->onPause()V

    .line 1680
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->photoFeed:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->onPause()V

    .line 1681
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ProfileView;->loadInitial(Z)V

    .line 472
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1684
    invoke-super {p0}, Lcom/vkontakte/android/NewsView;->onResume()V

    .line 1685
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->photoFeed:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->onResume()V

    .line 1686
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 442
    invoke-super {p0, p1, p2, p3, p4}, Lcom/vkontakte/android/NewsView;->onSizeChanged(IIII)V

    .line 443
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    if-eqz v0, :cond_0

    .line 444
    new-instance v0, Lcom/vkontakte/android/ProfileView$14;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ProfileView$14;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ProfileView;->post(Ljava/lang/Runnable;)Z

    .line 450
    :cond_0
    return-void
.end method

.method public openProfilePhotos()V
    .locals 6

    .prologue
    .line 408
    new-instance v0, Lcom/vkontakte/android/api/PhotosGet;

    iget v1, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    const/4 v2, -0x6

    const/4 v3, 0x0

    const/16 v4, 0x1f4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/PhotosGet;-><init>(IIIIZ)V

    .line 409
    new-instance v1, Lcom/vkontakte/android/ProfileView$13;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileView$13;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosGet;->setCallback(Lcom/vkontakte/android/api/PhotosGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 437
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 438
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 439
    return-void
.end method

.method public setUserPhoto(Ljava/lang/String;)V
    .locals 1
    .param p1, "photo"    # Ljava/lang/String;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    if-nez v0, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iput-object p1, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 401
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iput-object p1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->bigPhoto:Ljava/lang/String;

    .line 402
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->updateList()V

    .line 403
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    goto :goto_0
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 891
    new-instance v0, Lcom/vkontakte/android/ProfileView$17;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ProfileView$17;-><init>(Lcom/vkontakte/android/ProfileView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ProfileView;->post(Ljava/lang/Runnable;)Z

    .line 906
    invoke-super {p0}, Lcom/vkontakte/android/NewsView;->updateList()V

    .line 907
    return-void
.end method

.method public updatePostsButtons(II)V
    .locals 3
    .param p1, "postponed"    # I
    .param p2, "suggested"    # I

    .prologue
    .line 762
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->postponedCount:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->postponedCount:I

    .line 763
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->suggestedCount:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->suggestedCount:I

    .line 764
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileView;->updatePostsButtons()V

    .line 765
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->updateList()V

    .line 766
    iget v0, p0, Lcom/vkontakte/android/ProfileView;->uid:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_0

    .line 767
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "postponed_count"

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->postponedCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 769
    :cond_0
    return-void
.end method

.method protected useFrom()Z
    .locals 1

    .prologue
    .line 887
    const/4 v0, 0x0

    return v0
.end method
