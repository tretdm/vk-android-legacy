.class public Lcom/vkontakte/android/ProfilePhotosView;
.super Landroid/widget/LinearLayout;
.source "ProfilePhotosView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ProfilePhotosView$PhotoPagesAdapter;
    }
.end annotation


# static fields
.field public static ACTION_ADD_PHOTOS:Ljava/lang/String;


# instance fields
.field private albums:Lcom/vkontakte/android/PhotoAlbumsView;

.field private allList:Lcom/vkontakte/android/PhotoListView;

.field private isActive:Z

.field private pager:Lcom/vkontakte/android/ui/ViewPager;

.field private pagerIndicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private showUserPhotos:Z

.field private titles:[Ljava/lang/String;

.field private uid:I

.field private userList:Lcom/vkontakte/android/PhotoListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "com.vkontakte.android.ADD_LIST_PHOTOS"

    sput-object v0, Lcom/vkontakte/android/ProfilePhotosView;->ACTION_ADD_PHOTOS:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->titles:[Ljava/lang/String;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->showUserPhotos:Z

    .line 29
    iput-boolean v1, p0, Lcom/vkontakte/android/ProfilePhotosView;->isActive:Z

    .line 33
    new-instance v0, Lcom/vkontakte/android/ProfilePhotosView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ProfilePhotosView$1;-><init>(Lcom/vkontakte/android/ProfilePhotosView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->receiver:Landroid/content/BroadcastReceiver;

    .line 50
    iput p2, p0, Lcom/vkontakte/android/ProfilePhotosView;->uid:I

    .line 51
    invoke-direct {p0}, Lcom/vkontakte/android/ProfilePhotosView;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->titles:[Ljava/lang/String;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->showUserPhotos:Z

    .line 29
    iput-boolean v1, p0, Lcom/vkontakte/android/ProfilePhotosView;->isActive:Z

    .line 33
    new-instance v0, Lcom/vkontakte/android/ProfilePhotosView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ProfilePhotosView$1;-><init>(Lcom/vkontakte/android/ProfilePhotosView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->receiver:Landroid/content/BroadcastReceiver;

    .line 56
    invoke-direct {p0}, Lcom/vkontakte/android/ProfilePhotosView;->init()V

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ProfilePhotosView;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->uid:I

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ProfilePhotosView;)Lcom/vkontakte/android/PhotoListView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->allList:Lcom/vkontakte/android/PhotoListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ProfilePhotosView;)Lcom/vkontakte/android/PhotoListView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->userList:Lcom/vkontakte/android/PhotoListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ProfilePhotosView;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->showUserPhotos:Z

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ProfilePhotosView;)Lcom/vkontakte/android/PhotoAlbumsView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->albums:Lcom/vkontakte/android/PhotoAlbumsView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ProfilePhotosView;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->isActive:Z

    return v0
.end method

.method private init()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v6, -0x1

    .line 74
    invoke-virtual {p0, v9}, Lcom/vkontakte/android/ProfilePhotosView;->setOrientation(I)V

    .line 75
    new-instance v0, Lcom/vkontakte/android/ui/ViewPager;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfilePhotosView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->pager:Lcom/vkontakte/android/ui/ViewPager;

    .line 76
    new-instance v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfilePhotosView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ProfilePhotosView;->pager:Lcom/vkontakte/android/ui/ViewPager;

    const v3, 0x7f020013

    const v4, 0x7f020126

    const v5, 0x7f020128

    const v7, -0x4d4d4e

    invoke-direct/range {v0 .. v7}, Lcom/vkontakte/android/ui/ViewPagerIndicator;-><init>(Landroid/content/Context;Lcom/vkontakte/android/ui/ViewPager;IIIII)V

    iput-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->pagerIndicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->pagerIndicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1, v6}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->setShadow(II)V

    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->pager:Lcom/vkontakte/android/ui/ViewPager;

    iget-object v1, p0, Lcom/vkontakte/android/ProfilePhotosView;->pagerIndicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ViewPager;->setOnPageChangeListener(Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;)V

    .line 80
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81
    .local v8, "pparams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 82
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-virtual {v0, v8}, Lcom/vkontakte/android/ui/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ProfilePhotosView;->addView(Landroid/view/View;)V

    .line 85
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->pagerIndicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->pagerIndicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ProfilePhotosView;->addView(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->pager:Lcom/vkontakte/android/ui/ViewPager;

    new-instance v1, Lcom/vkontakte/android/ProfilePhotosView$PhotoPagesAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/ProfilePhotosView$PhotoPagesAdapter;-><init>(Lcom/vkontakte/android/ProfilePhotosView;Lcom/vkontakte/android/ProfilePhotosView$PhotoPagesAdapter;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ViewPager;->setAdapter(Lcom/vkontakte/android/ui/PagerAdapter;)V

    .line 89
    new-instance v0, Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfilePhotosView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PhotoListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->allList:Lcom/vkontakte/android/PhotoListView;

    .line 90
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->allList:Lcom/vkontakte/android/PhotoListView;

    iget v1, p0, Lcom/vkontakte/android/ProfilePhotosView;->uid:I

    invoke-virtual {v0, v11, v1}, Lcom/vkontakte/android/PhotoListView;->setType(II)V

    .line 91
    new-instance v0, Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfilePhotosView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PhotoListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->userList:Lcom/vkontakte/android/PhotoListView;

    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->userList:Lcom/vkontakte/android/PhotoListView;

    iget v1, p0, Lcom/vkontakte/android/ProfilePhotosView;->uid:I

    invoke-virtual {v0, v9, v1}, Lcom/vkontakte/android/PhotoListView;->setType(II)V

    .line 93
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-virtual {v0, v9, v10}, Lcom/vkontakte/android/ui/ViewPager;->setCurrentItem(IZ)V

    .line 95
    new-instance v0, Lcom/vkontakte/android/PhotoAlbumsView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfilePhotosView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/ProfilePhotosView;->uid:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/PhotoAlbumsView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->albums:Lcom/vkontakte/android/PhotoAlbumsView;

    .line 96
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->pagerIndicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1, v10}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->onPageScrolled(IFI)V

    .line 97
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfilePhotosView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090117

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfilePhotosView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090118

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfilePhotosView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090119

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    iput-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->titles:[Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->pagerIndicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    invoke-virtual {v0, v10}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->setTitlesInLowercase(Z)V

    .line 99
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->pagerIndicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    iget-object v1, p0, Lcom/vkontakte/android/ProfilePhotosView;->titles:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->setTitles([Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->pagerIndicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    new-instance v1, Lcom/vkontakte/android/ProfilePhotosView$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfilePhotosView$2;-><init>(Lcom/vkontakte/android/ProfilePhotosView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->setOnPageChangeListener(Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;)V

    .line 130
    return-void
.end method


# virtual methods
.method public getAllPhotosList()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->allList:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoListView;->getList()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getAllPhotosTotal()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->allList:Lcom/vkontakte/android/PhotoListView;

    iget v0, v0, Lcom/vkontakte/android/PhotoListView;->total:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/vkontakte/android/ProfilePhotosView;->ACTION_ADD_PHOTOS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfilePhotosView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ProfilePhotosView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    const-string v1, "vk"

    const-string v2, "on attached"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 69
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfilePhotosView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ProfilePhotosView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 70
    const-string v0, "vk"

    const-string v1, "on detached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->isActive:Z

    .line 170
    iget-object v1, p0, Lcom/vkontakte/android/ProfilePhotosView;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/ViewPager;->getCurrentPage()I

    move-result v1

    iget-boolean v2, p0, Lcom/vkontakte/android/ProfilePhotosView;->showUserPhotos:Z

    if-eqz v2, :cond_0

    :goto_0
    add-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    .line 181
    :goto_1
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 172
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->userList:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoListView;->onDeactivate()V

    goto :goto_1

    .line 175
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->allList:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoListView;->onDeactivate()V

    goto :goto_1

    .line 170
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->isActive:Z

    .line 155
    iget-object v1, p0, Lcom/vkontakte/android/ProfilePhotosView;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/ViewPager;->getCurrentPage()I

    move-result v1

    iget-boolean v2, p0, Lcom/vkontakte/android/ProfilePhotosView;->showUserPhotos:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    add-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    .line 166
    :goto_0
    return-void

    .line 157
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->userList:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoListView;->onActivate()V

    goto :goto_0

    .line 160
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->allList:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoListView;->onActivate()V

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAllPhotosList(Ljava/util/Vector;I)V
    .locals 1
    .param p2, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "p":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->allList:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/PhotoListView;->appendList(Ljava/util/Vector;I)V

    .line 185
    return-void
.end method

.method public setAllPhotosList([Lcom/vkontakte/android/Photo;)V
    .locals 5
    .param p1, "list"    # [Lcom/vkontakte/android/Photo;

    .prologue
    const/4 v3, 0x0

    .line 192
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 193
    .local v1, "ph":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    array-length v4, p1

    move v2, v3

    :goto_0
    if-lt v2, v4, :cond_0

    .line 194
    invoke-virtual {p0, v1, v3}, Lcom/vkontakte/android/ProfilePhotosView;->setAllPhotosList(Ljava/util/Vector;I)V

    .line 195
    return-void

    .line 193
    :cond_0
    aget-object v0, p1, v2

    .local v0, "p":Lcom/vkontakte/android/Photo;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setPage(I)V
    .locals 3
    .param p1, "p"    # I

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-virtual {v0, p1, v2}, Lcom/vkontakte/android/ui/ViewPager;->setCurrentItem(IZ)V

    .line 150
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->pagerIndicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->onPageScrolled(IFI)V

    .line 151
    return-void
.end method

.method public setShowUserPhotos(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const/4 v4, 0x0

    .line 133
    if-nez p1, :cond_0

    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfilePhotosView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090118

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfilePhotosView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090119

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->titles:[Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->pagerIndicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    iget-object v1, p0, Lcom/vkontakte/android/ProfilePhotosView;->titles:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->setTitles([Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-virtual {v0, v4, v4}, Lcom/vkontakte/android/ui/ViewPager;->setCurrentItem(IZ)V

    .line 137
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->pagerIndicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1, v4}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->onPageScrolled(IFI)V

    .line 138
    iput-boolean v4, p0, Lcom/vkontakte/android/ProfilePhotosView;->showUserPhotos:Z

    .line 139
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ViewPager;->getAdapter()Lcom/vkontakte/android/ui/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PagerAdapter;->notifyDataSetChanged()V

    .line 141
    :cond_0
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 5
    .param p1, "n"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 144
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->titles:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfilePhotosView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090117

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 145
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView;->pagerIndicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    iget-object v1, p0, Lcom/vkontakte/android/ProfilePhotosView;->titles:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->setTitles([Ljava/lang/String;)V

    .line 146
    return-void
.end method
