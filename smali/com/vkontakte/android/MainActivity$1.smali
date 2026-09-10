.class Lcom/vkontakte/android/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MainActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 194
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 195
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 196
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 197
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 198
    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 199
    iget-object v2, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    iget-object v2, v2, Lcom/vkontakte/android/MainActivity;->slidingPlayerView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget-object v2, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    iget-object v2, v2, Lcom/vkontakte/android/MainActivity;->slidingPlayerView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v2, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/vkontakte/android/MainActivity$1;->this$0:Lcom/vkontakte/android/MainActivity;

    iget-object v3, v3, Lcom/vkontakte/android/MainActivity;->slidingPlayerView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 202
    return-void
.end method
