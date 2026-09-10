.class public Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;
.super Lcom/vkontakte/android/imagepicker/ui/holders/Holder;
.source "FilterViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/imagepicker/ui/holders/Holder",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static image_padding:I

.field private static name_padding:I

.field private static onTouchListener:Landroid/view/View$OnTouchListener;

.field private static row_height:I

.field private static row_padding:I

.field private static row_size:I

.field private static sizes_inited:Z


# instance fields
.field private image:Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

.field private name:Landroid/widget/TextView;

.field private selection:Landroid/view/View;

.field private wrap:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->sizes_inited:Z

    .line 30
    new-instance v0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder$1;

    invoke-direct {v0}, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder$1;-><init>()V

    .line 67
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder$1;->setCancelOnViewMove(Z)Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->toOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    .line 30
    sput-object v0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ui/holders/Holder;-><init>()V

    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->wrap:Landroid/widget/FrameLayout;

    .line 114
    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->image:Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

    .line 115
    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->name:Landroid/widget/TextView;

    .line 116
    return-void
.end method

.method protected bridge synthetic getViewType(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->getViewType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getViewType(Ljava/lang/String;)I
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method protected getViews(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewType"    # I

    .prologue
    .line 122
    return-void
.end method

.method protected bridge synthetic initialize(Landroid/content/Context;ILjava/lang/Object;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->initialize(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initialize(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewType"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x30

    const/4 v6, 0x1

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 72
    sget-boolean v1, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->sizes_inited:Z

    if-nez v1, :cond_0

    .line 74
    const/high16 v1, 0x42aa0000    # 85.0f

    invoke-static {v1}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v1

    sput v1, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->row_size:I

    .line 75
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v1

    sput v1, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->row_padding:I

    .line 76
    const/high16 v1, 0x42e80000    # 116.0f

    invoke-static {v1}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v1

    sput v1, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->row_height:I

    .line 77
    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {v1}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v1

    sput v1, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->name_padding:I

    .line 78
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getDensity()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v0

    sput v0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->image_padding:I

    .line 80
    sput-boolean v6, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->sizes_inited:Z

    .line 83
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->wrap:Landroid/widget/FrameLayout;

    .line 84
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->wrap:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->row_size:I

    sget v3, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->row_height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    new-instance v0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

    sget v1, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->row_size:I

    invoke-direct {v0, p1, v1}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->image:Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

    .line 87
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->image:Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

    sget v1, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->image_padding:I

    sget v2, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->image_padding:I

    sget v3, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->image_padding:I

    sget v4, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->image_padding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->setPadding(IIII)V

    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->image:Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->setBackgroundColor(I)V

    .line 90
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->selection:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->selection:Landroid/view/View;

    const/16 v1, 0x150

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->selection:Landroid/view/View;

    const v1, 0x7f0201f1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 93
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->selection:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->name:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->name:Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getDefaultTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->name:Landroid/widget/TextView;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 98
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->name:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->name:Landroid/widget/TextView;

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 100
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->name:Landroid/widget/TextView;

    sget v1, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->name_padding:I

    invoke-virtual {v0, v5, v5, v5, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 102
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->wrap:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->selection:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    sget v3, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->row_size:I

    sget v4, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->row_size:I

    invoke-direct {v2, v3, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->wrap:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->image:Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    sget v3, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->row_size:I

    sget v4, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->row_size:I

    invoke-direct {v2, v3, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->wrap:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->name:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    sget v3, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->row_size:I

    sget v4, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->row_height:I

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->wrap:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->wrap:Landroid/widget/FrameLayout;

    return-object v0

    .line 78
    :cond_1
    const/high16 v0, 0x40600000    # 3.5f

    goto/16 :goto_0
.end method

.method protected bridge synthetic update(Landroid/content/Context;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->update(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method protected update(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewType"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    sget-object v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getFilterId()I

    move-result v0

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->getPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->selection:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->image:Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->displayFilterPreview(I)V

    .line 141
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->selection:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
