.class public Lcom/vkontakte/android/StickerManagerActivity;
.super Lcom/vkontakte/android/VKActivity;
.source "StickerManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;,
        Lcom/vkontakte/android/StickerManagerActivity$StickerThumbAdapter;
    }
.end annotation


# instance fields
.field private activationClickListener:Landroid/view/View$OnClickListener;

.field private active:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/data/StickerPack;",
            ">;"
        }
    .end annotation
.end field

.field private adapter:Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;

.field private content:Landroid/widget/FrameLayout;

.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private dragPrevPos:I

.field private draggingItem:I

.field private error:Lcom/vkontakte/android/ui/ErrorView;

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private inactive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/data/StickerPack;",
            ">;"
        }
    .end annotation
.end field

.field private list:Landroid/widget/ListView;

.field private listWrap:Landroid/widget/FrameLayout;

.field private progress:Landroid/widget/ProgressBar;

.field private reorderReq:Lcom/vkontakte/android/APIRequest;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 32
    invoke-direct {p0}, Lcom/vkontakte/android/VKActivity;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity;->active:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity;->inactive:Ljava/util/ArrayList;

    .line 45
    iput v1, p0, Lcom/vkontakte/android/StickerManagerActivity;->draggingItem:I

    .line 46
    iput v1, p0, Lcom/vkontakte/android/StickerManagerActivity;->dragPrevPos:I

    .line 47
    new-instance v0, Lcom/vkontakte/android/StickerManagerActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/StickerManagerActivity$1;-><init>(Lcom/vkontakte/android/StickerManagerActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity;->activationClickListener:Landroid/view/View$OnClickListener;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity;->active:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/StickerManagerActivity;Lcom/vkontakte/android/data/StickerPack;Z)V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/StickerManagerActivity;->setActiveState(Lcom/vkontakte/android/data/StickerPack;Z)V

    return-void
.end method

.method static synthetic access$10(Lcom/vkontakte/android/StickerManagerActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/StickerManagerActivity;)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/vkontakte/android/StickerManagerActivity;->loadData()V

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/StickerManagerActivity;)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/vkontakte/android/StickerManagerActivity;->updateList()V

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/StickerManagerActivity;)V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/vkontakte/android/StickerManagerActivity;->applyChanges()V

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/StickerManagerActivity;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vkontakte/android/StickerManagerActivity;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/StickerManagerActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity;->listWrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/StickerManagerActivity;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/vkontakte/android/StickerManagerActivity;->reorderReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/StickerManagerActivity;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/vkontakte/android/StickerManagerActivity;->dragPrevPos:I

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/StickerManagerActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity;->activationClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity;->inactive:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/StickerManagerActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/StickerManagerActivity;)Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity;->adapter:Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/StickerManagerActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/StickerManagerActivity;I)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/vkontakte/android/StickerManagerActivity;->dragPrevPos:I

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/StickerManagerActivity;III)V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/StickerManagerActivity;->sendReorder(III)V

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/StickerManagerActivity;)Lcom/vkontakte/android/ui/ErrorView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity;->error:Lcom/vkontakte/android/ui/ErrorView;

    return-object v0
.end method

.method private applyChanges()V
    .locals 5

    .prologue
    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v0, "order":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/vkontakte/android/StickerManagerActivity;->active:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 269
    const-string v2, "stickers"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/StickerManagerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "order"

    const-string v4, ","

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 270
    invoke-static {}, Lcom/vkontakte/android/data/Stickers;->broadcastUpdate()V

    .line 271
    return-void

    .line 266
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/data/StickerPack;

    .line 267
    .local v1, "pack":Lcom/vkontakte/android/data/StickerPack;
    iget v3, v1, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadData()V
    .locals 2

    .prologue
    .line 200
    new-instance v0, Lcom/vkontakte/android/api/StoreGetPurchases;

    invoke-direct {v0}, Lcom/vkontakte/android/api/StoreGetPurchases;-><init>()V

    .line 201
    new-instance v1, Lcom/vkontakte/android/StickerManagerActivity$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/StickerManagerActivity$5;-><init>(Lcom/vkontakte/android/StickerManagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/StoreGetPurchases;->setCallback(Lcom/vkontakte/android/api/StoreGetPurchases$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 227
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 200
    iput-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 228
    return-void
.end method

.method private sendReorder(III)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "before"    # I
    .param p3, "after"    # I

    .prologue
    .line 232
    new-instance v0, Lcom/vkontakte/android/api/StoreReorderProducts;

    invoke-direct {v0, p1, p2, p3}, Lcom/vkontakte/android/api/StoreReorderProducts;-><init>(III)V

    .line 233
    new-instance v1, Lcom/vkontakte/android/StickerManagerActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/StickerManagerActivity$6;-><init>(Lcom/vkontakte/android/StickerManagerActivity;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/StoreReorderProducts;->setCallback(Lcom/vkontakte/android/api/StoreReorderProducts$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 232
    iput-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity;->reorderReq:Lcom/vkontakte/android/APIRequest;

    .line 262
    return-void
.end method

.method private setActiveState(Lcom/vkontakte/android/data/StickerPack;Z)V
    .locals 2
    .param p1, "pack"    # Lcom/vkontakte/android/data/StickerPack;
    .param p2, "activate"    # Z

    .prologue
    .line 150
    new-instance v0, Lcom/vkontakte/android/api/StoreSetActive;

    iget v1, p1, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-direct {v0, v1, p2}, Lcom/vkontakte/android/api/StoreSetActive;-><init>(IZ)V

    .line 151
    new-instance v1, Lcom/vkontakte/android/StickerManagerActivity$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/vkontakte/android/StickerManagerActivity$4;-><init>(Lcom/vkontakte/android/StickerManagerActivity;ZLcom/vkontakte/android/data/StickerPack;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/StoreSetActive;->setCallback(Lcom/vkontakte/android/api/StoreSetActive$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 190
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 191
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 192
    return-void
.end method

.method private updateList()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity;->adapter:Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;->notifyDataSetChanged()V

    .line 196
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 197
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f07002f

    const/16 v8, 0x8

    const/4 v4, 0x0

    const/high16 v5, 0x42200000    # 40.0f

    const/4 v7, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/vkontakte/android/VKActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity;->content:Landroid/widget/FrameLayout;

    .line 74
    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity;->content:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 75
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity;->listWrap:Landroid/widget/FrameLayout;

    .line 76
    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity;->content:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/StickerManagerActivity;->listWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 77
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 78
    new-instance v1, Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/ReorderableListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity;->list:Landroid/widget/ListView;

    .line 79
    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity;->list:Landroid/widget/ListView;

    check-cast v1, Lcom/vkontakte/android/ui/ReorderableListView;

    new-instance v2, Lcom/vkontakte/android/StickerManagerActivity$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/StickerManagerActivity$2;-><init>(Lcom/vkontakte/android/StickerManagerActivity;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/ReorderableListView;->setDragListener(Lcom/vkontakte/android/ui/ReorderableListView$DragListener;)V

    .line 111
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;

    invoke-direct {v2, p0, v7}, Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;-><init>(Lcom/vkontakte/android/StickerManagerActivity;Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;)V

    iput-object v2, p0, Lcom/vkontakte/android/StickerManagerActivity;->adapter:Lcom/vkontakte/android/StickerManagerActivity$StickerAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity;->list:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/StickerManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/StickerManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 113
    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity;->list:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/StickerManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity;->listWrap:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/StickerManagerActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 115
    invoke-static {p0}, Lcom/vkontakte/android/ui/EmptyView;->create(Landroid/content/Context;)Lcom/vkontakte/android/ui/EmptyView;

    move-result-object v0

    .line 116
    .local v0, "empty":Lcom/vkontakte/android/ui/EmptyView;
    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 117
    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity;->listWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 118
    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity;->listWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 120
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity;->progress:Landroid/widget/ProgressBar;

    .line 121
    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity;->content:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/StickerManagerActivity;->progress:Landroid/widget/ProgressBar;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    const/16 v6, 0x11

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    const v1, 0x7f03003f

    invoke-static {p0, v1, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/ErrorView;

    iput-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity;->error:Lcom/vkontakte/android/ui/ErrorView;

    .line 123
    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v1, v8}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 124
    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity;->content:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/StickerManagerActivity;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 125
    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity;->error:Lcom/vkontakte/android/ui/ErrorView;

    new-instance v2, Lcom/vkontakte/android/StickerManagerActivity$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/StickerManagerActivity$3;-><init>(Lcom/vkontakte/android/StickerManagerActivity;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 134
    new-instance v1, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v2, Lcom/vkontakte/android/StickerManagerActivity$StickerThumbAdapter;

    invoke-direct {v2, p0, v7}, Lcom/vkontakte/android/StickerManagerActivity$StickerThumbAdapter;-><init>(Lcom/vkontakte/android/StickerManagerActivity;Lcom/vkontakte/android/StickerManagerActivity$StickerThumbAdapter;)V

    iget-object v3, p0, Lcom/vkontakte/android/StickerManagerActivity;->list:Landroid/widget/ListView;

    invoke-direct {v1, v2, v3, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 136
    iget-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity;->content:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/StickerManagerActivity;->setContentView(Landroid/view/View;)V

    .line 138
    invoke-direct {p0}, Lcom/vkontakte/android/StickerManagerActivity;->loadData()V

    .line 139
    return-void

    .line 109
    .end local v0    # "empty":Lcom/vkontakte/android/ui/EmptyView;
    :cond_0
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/StickerManagerActivity;->list:Landroid/widget/ListView;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lcom/vkontakte/android/VKActivity;->onDestroy()V

    .line 143
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 147
    :cond_0
    return-void
.end method
