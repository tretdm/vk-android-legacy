.class public Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;
.super Lcom/vkontakte/android/mediapicker/ui/holders/Holder;
.source "ImageViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/mediapicker/ui/holders/Holder",
        "<",
        "Lcom/vkontakte/android/mediapicker/entries/ImageEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final GridSize:F = 146.0f

.field public static final PaddingSize:F = 2.0f

.field private static checkPaddingSize:I

.field private static checkPaddingSizeSmall:I

.field private static checkSize:I

.field static measuredWidth:I

.field private static onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private static sizes_inited:Z


# instance fields
.field public check:Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;

.field public image:Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

.field public overlay:Landroid/view/View;

.field public wrap:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->sizes_inited:Z

    .line 53
    const/4 v0, -0x1

    sput v0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->measuredWidth:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/holders/Holder;-><init>()V

    return-void
.end method

.method public static setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p0, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 39
    sput-object p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 40
    return-void
.end method

.method public static updateBorder(ZLandroid/view/View;)V
    .locals 1
    .param p0, "isChecked"    # Z
    .param p1, "border"    # Landroid/view/View;

    .prologue
    .line 151
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 152
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static updateCheck(ZLcom/vkontakte/android/mediapicker/ui/ImageCheckView;)V
    .locals 1
    .param p0, "isChecked"    # Z
    .param p1, "check"    # Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;

    .prologue
    .line 142
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;->getIsChecked()Z

    move-result v0

    if-eq p0, v0, :cond_0

    .line 144
    invoke-virtual {p1, p0}, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;->setIsChecked(Z)V

    .line 145
    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;->invalidate()V

    .line 147
    :cond_0
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->wrap:Landroid/widget/FrameLayout;

    .line 115
    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->check:Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;

    .line 116
    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->image:Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

    .line 117
    return-void
.end method

.method protected getViewType(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)I
    .locals 1
    .param p1, "data"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic getViewType(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->getViewType(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)I

    move-result v0

    return v0
.end method

.method protected getViews(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewType"    # I

    .prologue
    .line 123
    return-void
.end method

.method protected initialize(Landroid/content/Context;ILcom/vkontakte/android/mediapicker/entries/ImageEntry;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewType"    # I
    .param p3, "data"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    const/high16 v1, 0x41c00000    # 24.0f

    const/4 v3, -0x1

    .line 58
    sget-boolean v0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->sizes_inited:Z

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->sizes_inited:Z

    .line 62
    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v0

    sput v0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->checkSize:I

    .line 63
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v0

    sput v0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->checkPaddingSizeSmall:I

    .line 64
    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v0

    sput v0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->checkPaddingSize:I

    .line 66
    sget v0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->checkSize:I

    sget v1, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->checkPaddingSize:I

    sget v2, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->checkPaddingSizeSmall:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    sput v0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->checkSize:I

    .line 69
    :cond_0
    new-instance v0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder$1;-><init>(Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->wrap:Landroid/widget/FrameLayout;

    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->wrap:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    new-instance v0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder$2;

    sget-object v1, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {v0, p0, p1, v3, v1}, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder$2;-><init>(Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;Landroid/content/Context;ILandroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->image:Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

    .line 91
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->image:Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->overlay:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->overlay:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->overlay:Landroid/view/View;

    const v1, 0x7f0201b1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->wrap:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->image:Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 99
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getSingleMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    new-instance v0, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;

    invoke-direct {v0, p1}, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->check:Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;

    .line 102
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->check:Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;

    sget v1, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->checkPaddingSize:I

    sget v2, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->checkPaddingSizeSmall:I

    sget v3, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->checkPaddingSizeSmall:I

    sget v4, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->checkPaddingSize:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;->setPadding(IIII)V

    .line 104
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->wrap:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->check:Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    sget v3, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->checkSize:I

    sget v4, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->checkSize:I

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->wrap:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->overlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->wrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected bridge synthetic initialize(Landroid/content/Context;ILjava/lang/Object;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p3, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->initialize(Landroid/content/Context;ILcom/vkontakte/android/mediapicker/entries/ImageEntry;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected update(Landroid/content/Context;ILcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewType"    # I
    .param p3, "data"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->wrap:Landroid/widget/FrameLayout;

    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getGalleryContext()Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getGalleryContext()Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getImageId()I

    move-result v0

    invoke-virtual {p3}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getImageId()I

    move-result v3

    if-ne v0, v3, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->image:Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, p3, v2, v1}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->display(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;ZZ)V

    .line 130
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->image:Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

    invoke-virtual {v0, p3}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->setTag(Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p3}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->check:Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->updateCheck(ZLcom/vkontakte/android/mediapicker/ui/ImageCheckView;)V

    .line 132
    invoke-virtual {p3}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->overlay:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->updateBorder(ZLandroid/view/View;)V

    .line 133
    return-void

    :cond_0
    move v0, v1

    .line 128
    goto :goto_0
.end method

.method protected bridge synthetic update(Landroid/content/Context;ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p3, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->update(Landroid/content/Context;ILcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    return-void
.end method

.method public updateImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
    .locals 2
    .param p1, "data"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    const/4 v1, 0x1

    .line 137
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->image:Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

    invoke-virtual {v0, p1, v1, v1}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->display(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;ZZ)V

    .line 138
    return-void
.end method
