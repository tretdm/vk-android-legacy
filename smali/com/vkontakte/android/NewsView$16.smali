.class Lcom/vkontakte/android/NewsView$16;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView;->preloadNew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$16;->this$0:Lcom/vkontakte/android/NewsView;

    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewsView$16;)Lcom/vkontakte/android/NewsView;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$16;->this$0:Lcom/vkontakte/android/NewsView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 742
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$16;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView;->access$7(Lcom/vkontakte/android/NewsView;)V

    .line 743
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$16;->this$0:Lcom/vkontakte/android/NewsView;

    new-instance v1, Lcom/vkontakte/android/api/NewsfeedGet;

    const-string v2, ""

    const/16 v3, 0x14

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vkontakte/android/NewsView$16;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v5}, Lcom/vkontakte/android/NewsView;->access$8(Lcom/vkontakte/android/NewsView;)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/vkontakte/android/api/NewsfeedGet;-><init>(Ljava/lang/String;IZI)V

    .line 744
    new-instance v2, Lcom/vkontakte/android/NewsView$16$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/NewsView$16$1;-><init>(Lcom/vkontakte/android/NewsView$16;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/api/NewsfeedGet;->setCallback(Lcom/vkontakte/android/api/NewsfeedGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 777
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$16;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 743
    invoke-static {v0, v1}, Lcom/vkontakte/android/NewsView;->access$9(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/APIRequest;)V

    .line 778
    return-void
.end method
