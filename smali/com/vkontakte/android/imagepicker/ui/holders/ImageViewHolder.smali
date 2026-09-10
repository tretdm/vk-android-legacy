.class public Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;
.super Lcom/vkontakte/android/imagepicker/ui/holders/Holder;
.source "ImageViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/imagepicker/ui/holders/Holder",
        "<",
        "Lcom/vkontakte/android/imagepicker/entries/ImageEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final AnimationDuration:I = 0x4b

.field public static final GridSize:F = 146.0f

.field public static final PaddingSize:F = 2.0f

.field private static final SelectionScale:F = 0.96f

.field private static final UseAlternateLayout:Z

.field private static checkPaddingSize:I

.field private static checkPaddingSizeSmall:I

.field private static checkSize:I

.field private static imageKind:I

.field static measuredWidth:I

.field private static onCheckTouchListener:Landroid/view/View$OnTouchListener;

.field private static sizes_inited:Z


# instance fields
.field public check:Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;

.field public image:Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field public overlay:Landroid/view/View;

.field public rectView:Landroid/view/View;

.field public wrap:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xc

    const/4 v1, 0x0

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->UseAlternateLayout:Z

    .line 34
    sput-boolean v1, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->sizes_inited:Z

    .line 54
    new-instance v0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$1;

    invoke-direct {v0}, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$1;-><init>()V

    .line 105
    invoke-virtual {v0, v2}, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$1;->setRequiredApiVersionForStateListeners(I)Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->toOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    .line 54
    sput-object v0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->onCheckTouchListener:Landroid/view/View$OnTouchListener;

    .line 107
    const/4 v0, -0x1

    sput v0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->measuredWidth:I

    return-void

    :cond_0
    move v0, v1

    .line 32
    goto :goto_0
.end method

.method public constructor <init>(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 46
    .local p1, "onItemClickListener":Landroid/widget/AdapterView$OnItemClickListener;, "Landroid/widget/AdapterView$OnItemClickListener;"
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ui/holders/Holder;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 49
    return-void
.end method

.method public static updateBorder(ZLandroid/view/View;)V
    .locals 1
    .param p0, "isChecked"    # Z
    .param p1, "border"    # Landroid/view/View;

    .prologue
    .line 211
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 212
    return-void

    .line 211
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static updateCheck(ZLcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;)V
    .locals 1
    .param p0, "isChecked"    # Z
    .param p1, "check"    # Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;

    .prologue
    .line 202
    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;->getIsChecked()Z

    move-result v0

    if-eq p0, v0, :cond_0

    .line 204
    invoke-virtual {p1, p0}, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;->setIsChecked(Z)V

    .line 205
    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;->invalidate()V

    .line 207
    :cond_0
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->wrap:Landroid/widget/FrameLayout;

    .line 175
    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->check:Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;

    .line 176
    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->image:Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

    .line 177
    return-void
.end method

.method protected getViewType(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)I
    .locals 1
    .param p1, "data"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic getViewType(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->getViewType(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)I

    move-result v0

    return v0
.end method

.method protected getViews(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewType"    # I

    .prologue
    .line 183
    return-void
.end method

.method protected initialize(Landroid/content/Context;ILcom/vkontakte/android/imagepicker/entries/ImageEntry;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewType"    # I
    .param p3, "data"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .prologue
    const/4 v3, 0x1

    const/4 v5, -0x1

    .line 112
    sget-boolean v0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->sizes_inited:Z

    if-nez v0, :cond_0

    .line 114
    sput-boolean v3, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->sizes_inited:Z

    .line 116
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v0

    sput v0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->checkSize:I

    .line 117
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v0

    sput v0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->checkPaddingSizeSmall:I

    .line 118
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v0

    sput v0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->checkPaddingSize:I

    .line 120
    sget v0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->checkSize:I

    sget v1, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->checkPaddingSize:I

    sget v2, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->checkPaddingSizeSmall:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    sput v0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->checkSize:I

    .line 122
    const/high16 v0, 0x43120000    # 146.0f

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43400000    # 192.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 123
    sput v3, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->imageKind:I

    .line 128
    :cond_0
    :goto_0
    new-instance v0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$2;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$2;-><init>(Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->wrap:Landroid/widget/FrameLayout;

    .line 137
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->wrap:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance v0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$3;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {v0, p0, p1, v5, v1}, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$3;-><init>(Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;Landroid/content/Context;ILandroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->image:Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

    .line 150
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->image:Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    new-instance v0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;

    invoke-direct {v0, p1}, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->check:Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;

    .line 153
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->check:Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;

    sget v1, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->checkPaddingSize:I

    sget v2, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->checkPaddingSizeSmall:I

    sget v3, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->checkPaddingSizeSmall:I

    sget v4, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->checkPaddingSize:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;->setPadding(IIII)V

    .line 154
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->check:Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;

    sget-object v1, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->onCheckTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 156
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->overlay:Landroid/view/View;

    .line 157
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->overlay:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->overlay:Landroid/view/View;

    const v1, 0x7f020200

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 160
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->wrap:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->image:Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 162
    sget-object v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-boolean v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->singleMode:Z

    if-nez v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->wrap:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->check:Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    sget v3, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->checkSize:I

    sget v4, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->checkSize:I

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->wrap:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->overlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->wrap:Landroid/widget/FrameLayout;

    return-object v0

    .line 125
    :cond_2
    const/4 v0, 0x3

    sput v0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->imageKind:I

    goto/16 :goto_0
.end method

.method protected bridge synthetic initialize(Landroid/content/Context;ILjava/lang/Object;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    check-cast p3, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->initialize(Landroid/content/Context;ILcom/vkontakte/android/imagepicker/entries/ImageEntry;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected update(Landroid/content/Context;ILcom/vkontakte/android/imagepicker/entries/ImageEntry;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewType"    # I
    .param p3, "data"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .prologue
    const/4 v1, 0x0

    .line 188
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->wrap:Landroid/widget/FrameLayout;

    sget-object v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getImageId()I

    move-result v0

    invoke-virtual {p3}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getImageId()I

    move-result v3

    if-ne v0, v3, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->image:Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, p3, v2, v1}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->display(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;ZZ)V

    .line 190
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->check:Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;

    invoke-virtual {v0, p3}, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;->setTag(Ljava/lang/Object;)V

    .line 191
    invoke-virtual {p3}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->check:Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;

    invoke-static {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->updateCheck(ZLcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;)V

    .line 192
    invoke-virtual {p3}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->overlay:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->updateBorder(ZLandroid/view/View;)V

    .line 193
    return-void

    :cond_0
    move v0, v1

    .line 188
    goto :goto_0
.end method

.method protected bridge synthetic update(Landroid/content/Context;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p3, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->update(Landroid/content/Context;ILcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    return-void
.end method

.method public updateImage(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V
    .locals 2
    .param p1, "data"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .prologue
    const/4 v1, 0x1

    .line 197
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->image:Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

    invoke-virtual {v0, p1, v1, v1}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->display(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;ZZ)V

    .line 198
    return-void
.end method
