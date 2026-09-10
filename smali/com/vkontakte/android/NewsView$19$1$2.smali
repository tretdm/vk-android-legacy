.class Lcom/vkontakte/android/NewsView$19$1$2;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView$19$1;->fail(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/NewsView$19$1;

.field private final synthetic val$ecode:I

.field private final synthetic val$emsg:Ljava/lang/String;

.field private final synthetic val$refresh:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView$19$1;ZILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$19$1$2;->this$2:Lcom/vkontakte/android/NewsView$19$1;

    iput-boolean p2, p0, Lcom/vkontakte/android/NewsView$19$1$2;->val$refresh:Z

    iput p3, p0, Lcom/vkontakte/android/NewsView$19$1$2;->val$ecode:I

    iput-object p4, p0, Lcom/vkontakte/android/NewsView$19$1$2;->val$emsg:Ljava/lang/String;

    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 958
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsView$19$1$2;->val$refresh:Z

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$19$1$2;->this$2:Lcom/vkontakte/android/NewsView$19$1;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView$19$1;->access$0(Lcom/vkontakte/android/NewsView$19$1;)Lcom/vkontakte/android/NewsView$19;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 962
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$19$1$2;->this$2:Lcom/vkontakte/android/NewsView$19$1;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView$19$1;->access$0(Lcom/vkontakte/android/NewsView$19$1;)Lcom/vkontakte/android/NewsView$19;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/NewsView$19$1$2;->val$ecode:I

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$1$2;->val$emsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/NewsView;->onError(ILjava/lang/String;)V

    .line 963
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$19$1$2;->this$2:Lcom/vkontakte/android/NewsView$19$1;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView$19$1;->access$0(Lcom/vkontakte/android/NewsView$19$1;)Lcom/vkontakte/android/NewsView$19;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewsView;->access$12(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/APIRequest;)V

    .line 964
    return-void
.end method
