.class public Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;
.super Landroid/widget/RelativeLayout;
.source "ImagePickerHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView$Callback;
    }
.end annotation


# static fields
.field public static final Size:I = 0x30


# instance fields
.field private actionsWrap:Landroid/widget/LinearLayout;

.field private back:Landroid/widget/ImageView;

.field private backWrap:Landroid/widget/LinearLayout;

.field private callback:Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView$Callback;

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

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 160
    new-instance v1, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView$1;-><init>(Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;)V

    iput-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->onBackClickListener:Landroid/view/View$OnClickListener;

    .line 46
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v2

    invoke-direct {v1, v6, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    const v1, 0x7f0201f2

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->setBackgroundResource(I)V

    .line 49
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->logo:Landroid/widget/ImageView;

    .line 50
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->logo:Landroid/widget/ImageView;

    const v2, 0x7f0201f3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->logo:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 52
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->logo:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v4}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v3

    invoke-static {v4}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->back:Landroid/widget/ImageView;

    .line 55
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->back:Landroid/widget/ImageView;

    const v2, 0x7f0201e3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->back:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 57
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->back:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v8}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v3

    invoke-direct {v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->back:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->title:Landroid/widget/TextView;

    .line 61
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->title:Landroid/widget/TextView;

    sget-object v2, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    const/16 v2, 0x11

    invoke-static {v2}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->title:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v3

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 64
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->title:Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getDefaultTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 65
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->title:Landroid/widget/TextView;

    invoke-static {v8}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 67
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 68
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 70
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->backWrap:Landroid/widget/LinearLayout;

    .line 71
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->backWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->backWrap:Landroid/widget/LinearLayout;

    invoke-static {v7}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v2

    invoke-virtual {v1, v5, v5, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 73
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->backWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 74
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->backWrap:Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 75
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->backWrap:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->onBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->backWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 78
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->backWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->setSelector(Landroid/view/View;)V

    .line 80
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->backWrap:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->back:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 81
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->backWrap:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->logo:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->backWrap:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, -0x2

    invoke-direct {v0, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 85
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 87
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->actionsWrap:Landroid/widget/LinearLayout;

    .line 88
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->actionsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->backWrap:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->addView(Landroid/view/View;)V

    .line 91
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->actionsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->addView(Landroid/view/View;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView$Callback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView$Callback;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {p0, p2}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->setCallback(Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView$Callback;)V

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;)Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView$Callback;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->callback:Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView$Callback;

    return-object v0
.end method


# virtual methods
.method public addActionButton(IILandroid/view/View$OnClickListener;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "resource"    # I
    .param p3, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 102
    new-instance v0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView$2;

    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getStaticLocalContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView$2;-><init>(Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;Landroid/content/Context;)V

    .line 110
    .local v0, "button":Landroid/widget/ImageButton;
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setId(I)V

    .line 111
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 113
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 114
    invoke-virtual {v0, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->setSelector(Landroid/view/View;)V

    .line 118
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->actionsWrap:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 119
    return-void
.end method

.method public hideActionButton(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 123
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->actionsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 126
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public setBackVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 139
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->back:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->backWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 141
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView$Callback;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->callback:Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView$Callback;

    .line 158
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .param p1, "stringId"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->title:Landroid/widget/TextView;

    sget-object v1, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {p1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method

.method public showActionButton(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 131
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->actionsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 133
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 134
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :cond_0
    return-void
.end method
