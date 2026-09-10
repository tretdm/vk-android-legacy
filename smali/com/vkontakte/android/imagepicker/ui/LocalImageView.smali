.class public Lcom/vkontakte/android/imagepicker/ui/LocalImageView;
.super Landroid/widget/FrameLayout;
.source "LocalImageView.java"


# static fields
.field private static def_image_kind:I

.field private static image_kind_inited:Z

.field private static onImageTouchListener:Landroid/view/View$OnTouchListener;


# instance fields
.field private callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkontakte/android/imagepicker/utils/ActionCallback",
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
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->image_kind_inited:Z

    .line 82
    new-instance v0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView$2;

    invoke-direct {v0}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView$2;-><init>()V

    .line 114
    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView$2;->toOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    .line 82
    sput-object v0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->onImageTouchListener:Landroid/view/View$OnTouchListener;

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minSize"    # I

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;-><init>(Landroid/content/Context;ILandroid/widget/AdapterView$OnItemClickListener;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/widget/AdapterView$OnItemClickListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minSize"    # I

    .prologue
    .local p3, "onItemClickListener":Landroid/widget/AdapterView$OnItemClickListener;, "Landroid/widget/AdapterView$OnItemClickListener;"
    const/4 v2, -0x1

    .line 125
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    iput v2, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->imageId:I

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->isTemp:Z

    .line 54
    new-instance v0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView$1;-><init>(Lcom/vkontakte/android/imagepicker/ui/LocalImageView;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    .line 127
    iput p2, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->size:I

    .line 129
    const/16 v0, 0x60

    if-le p2, v0, :cond_2

    .line 130
    invoke-static {}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->getDefaultImageKind()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->image_kind:I

    .line 134
    :goto_0
    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 136
    new-instance v0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView$3;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView$3;-><init>(Lcom/vkontakte/android/imagepicker/ui/LocalImageView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->image:Landroid/widget/ImageView;

    .line 167
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->image:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 169
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->image:Landroid/widget/ImageView;

    sget-object v1, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->onImageTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 173
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->overlay:Landroid/view/View;

    .line 174
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->overlay:Landroid/view/View;

    const/high16 v1, 0x44000000    # 512.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 175
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->overlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->image:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->overlay:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    :cond_1
    const v0, -0xeeeeef

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->setBackgroundColor(I)V

    .line 184
    return-void

    .line 132
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->image_kind:I

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/vkontakte/android/imagepicker/ui/LocalImageView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->image:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/imagepicker/ui/LocalImageView;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->imageId:I

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/imagepicker/ui/LocalImageView;Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;)V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->display(Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;)V

    return-void
.end method

.method private compare(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)Z
    .locals 2
    .param p1, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .prologue
    .line 202
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->imageId:I

    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getImageId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->isTemp:Z

    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsTemp()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private display(Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;)V
    .locals 2
    .param p1, "data"    # Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;

    .prologue
    .line 227
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;->getLoadedIn()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->image:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 231
    :goto_0
    return-void

    .line 230
    :cond_1
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->displayWithFade(Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;)V

    goto :goto_0
.end method

.method private displayWithFade(Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;)V
    .locals 4
    .param p1, "data"    # Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->image:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 237
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->image:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 238
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;->getLoadedIn()I

    move-result v0

    const/16 v2, 0x32

    if-ge v0, v2, :cond_0

    const/16 v0, 0x61

    :goto_0
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 239
    return-void

    .line 238
    :cond_0
    const/16 v0, 0x78

    goto :goto_0
.end method

.method public static getDefaultImageKind()I
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->image_kind_inited:Z

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x3

    sput v0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->def_image_kind:I

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->image_kind_inited:Z

    .line 40
    :cond_0
    sget v0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->def_image_kind:I

    return v0
.end method

.method private set(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V
    .locals 2
    .param p1, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .prologue
    const/4 v1, 0x0

    .line 207
    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->imageId:I

    .line 208
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsTemp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->isTemp:Z

    .line 209
    return-void

    .line 207
    :cond_1
    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getImageId()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public display(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;ZZ)V
    .locals 2
    .param p1, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .param p2, "fromGrid"    # Z
    .param p3, "force"    # Z

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->compare(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->image:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 217
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->set(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    .line 219
    if-eqz p1, :cond_0

    .line 220
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    invoke-virtual {v0, p1, p2, v1}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getThumbnailForImage(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;)V

    goto :goto_0
.end method

.method public displayFilterPreview(I)V
    .locals 5
    .param p1, "filter_id"    # I

    .prologue
    .line 190
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->imageId:I

    if-ne p1, v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->image:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 195
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->imageId:I

    .line 197
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->imageId:I

    iget v3, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->size:I

    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getPreviewForFilter(Landroid/content/Context;IILcom/vkontakte/android/imagepicker/utils/ActionCallback;)V

    goto :goto_0
.end method

.method public getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getOverlay()Landroid/view/View;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->overlay:Landroid/view/View;

    return-object v0
.end method

.method public hideOverlay(Z)V
    .locals 4
    .param p1, "animated"    # Z

    .prologue
    .line 256
    new-instance v0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView$4;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView$4;-><init>(Lcom/vkontakte/android/imagepicker/ui/LocalImageView;)V

    .line 265
    .local v0, "hider":Ljava/lang/Runnable;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    if-eqz p1, :cond_0

    .line 266
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->getOverlay()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x5a

    invoke-virtual {v1, v2, v0, v3}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;I)V

    .line 269
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public showOverlay()V
    .locals 4

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->getOverlay()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 250
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 251
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->getOverlay()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->fadeIn(Landroid/view/View;Ljava/lang/Runnable;I)V

    .line 252
    :cond_0
    return-void
.end method
