.class public Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;
.super Landroid/widget/RelativeLayout;
.source "GalleryPickerHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView$Callback;
    }
.end annotation


# static fields
.field public static final SIZE:I = 0x30


# instance fields
.field private actionsWrap:Landroid/widget/LinearLayout;

.field private back:Landroid/widget/ImageView;

.field private backWrap:Landroid/widget/LinearLayout;

.field private callback:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView$Callback;

.field private logo:Landroid/widget/ImageView;

.field private onBackClickListener:Landroid/view/View$OnClickListener;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v4, 0x41e00000    # 28.0f

    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v7, 0x40e00000    # 7.0f

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 159
    new-instance v1, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView$1;-><init>(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;)V

    iput-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->onBackClickListener:Landroid/view/View$OnClickListener;

    .line 48
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v2

    invoke-direct {v1, v6, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    const v1, 0x7f020220

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->setBackgroundResource(I)V

    .line 51
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->logo:Landroid/widget/ImageView;

    .line 52
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->logo:Landroid/widget/ImageView;

    const v2, 0x7f020221

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->logo:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 54
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->logo:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v4}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v3

    invoke-static {v4}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->back:Landroid/widget/ImageView;

    .line 57
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->back:Landroid/widget/ImageView;

    const v2, 0x7f020211

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->back:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 59
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->back:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v8}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v3

    invoke-direct {v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->back:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->title:Landroid/widget/TextView;

    .line 63
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->title:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/providers/LangProvider;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->title:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v3

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 66
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->title:Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->getDefaultTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 67
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->title:Landroid/widget/TextView;

    invoke-static {v8}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 69
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 70
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 72
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->backWrap:Landroid/widget/LinearLayout;

    .line 73
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->backWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->backWrap:Landroid/widget/LinearLayout;

    invoke-static {v7}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v2

    invoke-virtual {v1, v5, v5, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 75
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->backWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 76
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->backWrap:Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 77
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->backWrap:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->onBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->backWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 80
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->backWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->setSelector(Landroid/view/View;)V

    .line 82
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->backWrap:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->back:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->backWrap:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->logo:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->backWrap:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, -0x2

    invoke-direct {v0, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 87
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 89
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->actionsWrap:Landroid/widget/LinearLayout;

    .line 90
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->actionsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->backWrap:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->addView(Landroid/view/View;)V

    .line 93
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->actionsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->addView(Landroid/view/View;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView$Callback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView$Callback;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->setCallback(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView$Callback;)V

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView$Callback;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->callback:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView$Callback;

    return-object v0
.end method


# virtual methods
.method public addActionButton(IILandroid/view/View$OnClickListener;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "resource"    # I
    .param p3, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v5, 0x0

    .line 104
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v1

    .line 106
    .local v1, "padding":I
    new-instance v0, Landroid/widget/ImageButton;

    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->getStaticLocalContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 108
    .local v0, "button":Landroid/widget/ImageButton;
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setId(I)V

    .line 109
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 111
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 112
    invoke-virtual {v0, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {v0, v1, v5, v1, v5}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 115
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->setSelector(Landroid/view/View;)V

    .line 117
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->actionsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 118
    return-void
.end method

.method public hideActionButton(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 122
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->actionsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 125
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public setBackVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 138
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->back:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->backWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 140
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView$Callback;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->callback:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView$Callback;

    .line 157
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .param p1, "stringId"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->title:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/vkontakte/android/mediapicker/providers/LangProvider;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method

.method public showActionButton(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 130
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->actionsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 133
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :cond_0
    return-void
.end method
