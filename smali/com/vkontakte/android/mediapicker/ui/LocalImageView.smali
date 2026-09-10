.class public Lcom/vkontakte/android/mediapicker/ui/LocalImageView;
.super Landroid/widget/FrameLayout;
.source "LocalImageView.java"


# static fields
.field private static def_image_kind:I

.field private static imageGestureDetector:Landroid/view/GestureDetector;

.field private static image_kind_inited:Z

.field private static onGestureListener:Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;

.field private static onImageTouchListener:Lcom/vkontakte/android/mediapicker/entries/ImageTouchListener;


# instance fields
.field private callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkontakte/android/mediapicker/entries/ActionCallback",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private image:Landroid/widget/ImageView;

.field private imageId:I

.field private image_kind:I

.field private isTemp:Z

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private overlay:Landroid/view/View;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 31
    sput-boolean v3, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->image_kind_inited:Z

    .line 93
    new-instance v0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;

    invoke-direct {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;-><init>()V

    sput-object v0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->onGestureListener:Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;

    .line 95
    new-instance v0, Landroid/view/GestureDetector;

    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->getStaticLocalContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->onGestureListener:Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    sput-object v0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->imageGestureDetector:Landroid/view/GestureDetector;

    .line 96
    sget-object v0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->imageGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 98
    new-instance v0, Lcom/vkontakte/android/mediapicker/entries/ImageTouchListener;

    invoke-direct {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageTouchListener;-><init>()V

    sput-object v0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->onImageTouchListener:Lcom/vkontakte/android/mediapicker/entries/ImageTouchListener;

    .line 99
    sget-object v0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->onImageTouchListener:Lcom/vkontakte/android/mediapicker/entries/ImageTouchListener;

    sget-object v1, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->imageGestureDetector:Landroid/view/GestureDetector;

    sget-object v2, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->onGestureListener:Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/mediapicker/entries/ImageTouchListener;->setImageGestureListener(Landroid/view/GestureDetector;Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;)V

    .line 101
    sget-object v0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->onGestureListener:Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;

    sget-object v1, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->onImageTouchListener:Lcom/vkontakte/android/mediapicker/entries/ImageTouchListener;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->bindTouchListener(Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;)Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minSize"    # I

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;-><init>(Landroid/content/Context;ILandroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/widget/AdapterView$OnItemClickListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minSize"    # I

    .prologue
    .local p3, "onItemClickListener":Landroid/widget/AdapterView$OnItemClickListener;, "Landroid/widget/AdapterView$OnItemClickListener;"
    const/4 v2, -0x1

    .line 113
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    iput v2, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->imageId:I

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->isTemp:Z

    .line 57
    new-instance v0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView$1;-><init>(Lcom/vkontakte/android/mediapicker/ui/LocalImageView;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    .line 115
    iput p2, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->size:I

    .line 117
    const/16 v0, 0x60

    if-le p2, v0, :cond_2

    .line 118
    invoke-static {}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->getDefaultImageKind()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->image_kind:I

    .line 122
    :goto_0
    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 124
    new-instance v0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView$2;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView$2;-><init>(Lcom/vkontakte/android/mediapicker/ui/LocalImageView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->image:Landroid/widget/ImageView;

    .line 155
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->image:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 157
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 159
    sget-object v1, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->onImageTouchListener:Lcom/vkontakte/android/mediapicker/entries/ImageTouchListener;

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getSingleMode()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/mediapicker/entries/ImageTouchListener;->setGestureDetector(Landroid/view/GestureDetector;)Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;

    .line 160
    sget-object v0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->onImageTouchListener:Lcom/vkontakte/android/mediapicker/entries/ImageTouchListener;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageTouchListener;->toOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 162
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->overlay:Landroid/view/View;

    .line 163
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->overlay:Landroid/view/View;

    const/high16 v1, 0x44000000    # 512.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 164
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->overlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->image:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->overlay:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    :cond_1
    const v0, -0xeeeeef

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->setBackgroundColor(I)V

    .line 173
    return-void

    .line 120
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->image_kind:I

    goto :goto_0

    .line 159
    :cond_3
    sget-object v0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->imageGestureDetector:Landroid/view/GestureDetector;

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/vkontakte/android/mediapicker/ui/LocalImageView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->image:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/mediapicker/ui/LocalImageView;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->imageId:I

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/mediapicker/ui/LocalImageView;Lcom/vkontakte/android/mediapicker/entries/ImageDataEntry;)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->display(Lcom/vkontakte/android/mediapicker/entries/ImageDataEntry;)V

    return-void
.end method

.method private compare(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)Z
    .locals 2
    .param p1, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    .line 191
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->imageId:I

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getImageId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->isTemp:Z

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsTemp()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private display(Lcom/vkontakte/android/mediapicker/entries/ImageDataEntry;)V
    .locals 2
    .param p1, "data"    # Lcom/vkontakte/android/mediapicker/entries/ImageDataEntry;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->image:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 219
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageDataEntry;->getLoadedIn()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_2

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->image:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageDataEntry;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 222
    :cond_2
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->displayWithFade(Lcom/vkontakte/android/mediapicker/entries/ImageDataEntry;)V

    goto :goto_0
.end method

.method private displayWithFade(Lcom/vkontakte/android/mediapicker/entries/ImageDataEntry;)V
    .locals 6
    .param p1, "data"    # Lcom/vkontakte/android/mediapicker/entries/ImageDataEntry;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 228
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->image:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 229
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->image:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageDataEntry;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->image:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageDataEntry;->getLoadedIn()I

    move-result v1

    const/16 v3, 0x32

    if-ge v1, v3, :cond_0

    const/16 v1, 0x61

    :goto_0
    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_1
    return-void

    .line 233
    :cond_0
    const/16 v1, 0x78

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 237
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "Cannot animate view, setting alpha"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1
.end method

.method public static getDefaultImageKind()I
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->image_kind_inited:Z

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x3

    sput v0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->def_image_kind:I

    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->image_kind_inited:Z

    .line 43
    :cond_0
    sget v0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->def_image_kind:I

    return v0
.end method

.method private set(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
    .locals 2
    .param p1, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    const/4 v1, 0x0

    .line 196
    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->imageId:I

    .line 197
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsTemp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->isTemp:Z

    .line 198
    return-void

    .line 196
    :cond_1
    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getImageId()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public display(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;ZZ)V
    .locals 2
    .param p1, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .param p2, "fromGrid"    # Z
    .param p3, "force"    # Z

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->compare(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->image:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 206
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->set(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    .line 208
    if-eqz p1, :cond_0

    .line 209
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->instance()Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    invoke-virtual {v0, p1, p2, v1}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->getThumbnailForImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;ZLcom/vkontakte/android/mediapicker/entries/ActionCallback;)V

    goto :goto_0
.end method

.method public displayFilterPreview(I)V
    .locals 5
    .param p1, "filter_id"    # I

    .prologue
    .line 179
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->imageId:I

    if-ne p1, v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->image:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 184
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->imageId:I

    .line 186
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->instance()Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->imageId:I

    iget v3, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->size:I

    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->getPreviewForFilter(Landroid/content/Context;IILcom/vkontakte/android/mediapicker/entries/ActionCallback;)V

    goto :goto_0
.end method

.method public displayOverlayView()V
    .locals 4

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->getOverlayView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 252
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 253
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->getOverlayView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->fadeIn(Landroid/view/View;Ljava/lang/Runnable;I)V

    .line 254
    :cond_0
    return-void
.end method

.method public getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getOverlayView()Landroid/view/View;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->overlay:Landroid/view/View;

    return-object v0
.end method

.method public hideOverlayView(Z)V
    .locals 4
    .param p1, "animated"    # Z

    .prologue
    .line 258
    new-instance v0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView$3;-><init>(Lcom/vkontakte/android/mediapicker/ui/LocalImageView;)V

    .line 267
    .local v0, "hider":Ljava/lang/Runnable;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    if-eqz p1, :cond_0

    .line 268
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->getOverlayView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x5a

    invoke-virtual {v1, v2, v0, v3}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;I)V

    .line 271
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
