.class public Lcom/vkontakte/android/ui/ErrorView;
.super Landroid/widget/LinearLayout;
.source "ErrorView.java"


# instance fields
.field private lastClickTime:J

.field private retryListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/ui/ErrorView;->lastClickTime:J

    .line 18
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ErrorView;->init()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/ui/ErrorView;->lastClickTime:J

    .line 23
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ErrorView;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/ui/ErrorView;->lastClickTime:J

    .line 28
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ErrorView;->init()V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/ui/ErrorView;)J
    .locals 2
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ErrorView;

    .prologue
    .line 11
    iget-wide v0, p0, Lcom/vkontakte/android/ui/ErrorView;->lastClickTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/vkontakte/android/ui/ErrorView;J)J
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ErrorView;
    .param p1, "x1"    # J

    .prologue
    .line 11
    iput-wide p1, p0, Lcom/vkontakte/android/ui/ErrorView;->lastClickTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/vkontakte/android/ui/ErrorView;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ErrorView;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/vkontakte/android/ui/ErrorView;->retryListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 35
    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/ErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 36
    const v0, 0x7f0800ac

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/ErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/ui/ErrorView$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/ErrorView$1;-><init>(Lcom/vkontakte/android/ui/ErrorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method

.method public setErrorInfo(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 52
    return-void
.end method

.method public setIsInline(Z)V
    .locals 2
    .param p1, "inl"    # Z

    .prologue
    .line 59
    const v0, 0x7f0800aa

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/ErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 60
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 55
    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/ErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method

.method public setOnRetryListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/vkontakte/android/ui/ErrorView;->retryListener:Landroid/view/View$OnClickListener;

    .line 48
    return-void
.end method
