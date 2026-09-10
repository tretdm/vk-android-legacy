.class Lcom/vkontakte/android/PostViewActivity$24$1$1;
.super Ljava/lang/Object;
.source "PostViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PostViewActivity$24$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/PostViewActivity$24$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PostViewActivity$24$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$24$1$1;->this$2:Lcom/vkontakte/android/PostViewActivity$24$1;

    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$24$1$1;->this$2:Lcom/vkontakte/android/PostViewActivity$24$1;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity$24$1;->access$0(Lcom/vkontakte/android/PostViewActivity$24$1;)Lcom/vkontakte/android/PostViewActivity$24;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity$24;->access$0(Lcom/vkontakte/android/PostViewActivity$24;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$13(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->scrollDown()V

    .line 766
    return-void
.end method
