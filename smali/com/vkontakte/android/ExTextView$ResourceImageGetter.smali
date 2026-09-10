.class Lcom/vkontakte/android/ExTextView$ResourceImageGetter;
.super Ljava/lang/Object;
.source "ExTextView.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ExTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResourceImageGetter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ExTextView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/ExTextView;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/vkontakte/android/ExTextView$ResourceImageGetter;->this$0:Lcom/vkontakte/android/ExTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/ExTextView;Lcom/vkontakte/android/ExTextView$ResourceImageGetter;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ExTextView$ResourceImageGetter;-><init>(Lcom/vkontakte/android/ExTextView;)V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 104
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/ExTextView$ResourceImageGetter;->this$0:Lcom/vkontakte/android/ExTextView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ExTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 105
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "x":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method
