.class Lcom/vkontakte/android/ui/PaginationView$1;
.super Ljava/util/TimerTask;
.source "PaginationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/PaginationView;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/PaginationView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PaginationView;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/vkontakte/android/ui/PaginationView$1;->this$0:Lcom/vkontakte/android/ui/PaginationView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 215
    iget-object v0, p0, Lcom/vkontakte/android/ui/PaginationView$1;->this$0:Lcom/vkontakte/android/ui/PaginationView;

    new-instance v1, Lcom/vkontakte/android/ui/PaginationView$1$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/PaginationView$1$1;-><init>(Lcom/vkontakte/android/ui/PaginationView$1;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PaginationView;->post(Ljava/lang/Runnable;)Z

    .line 222
    iget-object v0, p0, Lcom/vkontakte/android/ui/PaginationView$1;->this$0:Lcom/vkontakte/android/ui/PaginationView;

    new-instance v1, Lcom/vkontakte/android/ui/PaginationView$1$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/PaginationView$1$2;-><init>(Lcom/vkontakte/android/ui/PaginationView$1;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/PaginationView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 225
    return-void
.end method
