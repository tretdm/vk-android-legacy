.class public Lcom/vkontakte/android/PhotoAttachView;
.super Landroid/widget/LinearLayout;
.source "PhotoAttachView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "photoURL"    # Ljava/lang/String;
    .param p3, "bigURL"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 16
    .local v0, "iv":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 17
    if-eqz p3, :cond_0

    .line 18
    new-instance v1, Lcom/vkontakte/android/PhotoAttachView$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/vkontakte/android/PhotoAttachView$1;-><init>(Lcom/vkontakte/android/PhotoAttachView;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    :cond_0
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PhotoAttachView;->addView(Landroid/view/View;)V

    .line 34
    return-void
.end method


# virtual methods
.method public load()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 37
    const-string v0, "vk"

    const-string v1, "PhotoAttachView load"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v1, Lcom/vkontakte/android/ImageLoader;

    invoke-direct {v1}, Lcom/vkontakte/android/ImageLoader;-><init>()V

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/PhotoAttachView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ImageLoader;->start()V

    .line 41
    return-void
.end method
