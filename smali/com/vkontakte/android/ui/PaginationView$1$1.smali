.class Lcom/vkontakte/android/ui/PaginationView$1$1;
.super Ljava/lang/Object;
.source "PaginationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/PaginationView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ui/PaginationView$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PaginationView$1;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/vkontakte/android/ui/PaginationView$1$1;->this$1:Lcom/vkontakte/android/ui/PaginationView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 216
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 217
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 218
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 219
    iget-object v1, p0, Lcom/vkontakte/android/ui/PaginationView$1$1;->this$1:Lcom/vkontakte/android/ui/PaginationView$1;

    iget-object v1, v1, Lcom/vkontakte/android/ui/PaginationView$1;->this$0:Lcom/vkontakte/android/ui/PaginationView;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/PaginationView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 220
    iget-object v1, p0, Lcom/vkontakte/android/ui/PaginationView$1$1;->this$1:Lcom/vkontakte/android/ui/PaginationView$1;

    iget-object v1, v1, Lcom/vkontakte/android/ui/PaginationView$1;->this$0:Lcom/vkontakte/android/ui/PaginationView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/ui/PaginationView;->access$002(Lcom/vkontakte/android/ui/PaginationView;Z)Z

    .line 221
    return-void
.end method
