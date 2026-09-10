.class public Lcom/vkontakte/android/ui/FormFieldsLayout;
.super Landroid/widget/LinearLayout;
.source "FormFieldsLayout.java"


# instance fields
.field private isTablet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/FormFieldsLayout;->init()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/FormFieldsLayout;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/FormFieldsLayout;->init()V

    .line 30
    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/FormFieldsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vkontakte/android/ui/FormFieldsLayout;->isTablet:Z

    .line 34
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/FormFieldsLayout;->isTablet:Z

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/ui/FormFieldsLayout;->setOrientation(I)V

    .line 36
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/FormFieldsLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/ui/FormFieldsLayout$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/FormFieldsLayout$1;-><init>(Lcom/vkontakte/android/ui/FormFieldsLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 50
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 33
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/FormFieldsLayout;->setOrientation(I)V

    goto :goto_1
.end method

.method public onMeasure(II)V
    .locals 3
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/FormFieldsLayout;->isTablet:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    or-int p1, v0, v1

    .line 56
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 57
    return-void
.end method
