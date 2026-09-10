.class Lcom/vkontakte/android/ui/PaginationView$1$2;
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
    .line 222
    iput-object p1, p0, Lcom/vkontakte/android/ui/PaginationView$1$2;->this$1:Lcom/vkontakte/android/ui/PaginationView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/vkontakte/android/ui/PaginationView$1$2;->this$1:Lcom/vkontakte/android/ui/PaginationView$1;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PaginationView$1;->this$0:Lcom/vkontakte/android/ui/PaginationView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PaginationView;->access$000(Lcom/vkontakte/android/ui/PaginationView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/PaginationView$1$2;->this$1:Lcom/vkontakte/android/ui/PaginationView$1;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PaginationView$1;->this$0:Lcom/vkontakte/android/ui/PaginationView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/PaginationView;->access$102(Lcom/vkontakte/android/ui/PaginationView;Z)Z

    .line 224
    :cond_0
    return-void
.end method
