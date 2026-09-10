.class Lcom/vkontakte/android/PostViewActivity$24$1;
.super Ljava/lang/Object;
.source "PostViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PostViewActivity$24;->success(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/PostViewActivity$24;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PostViewActivity$24;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$24$1;->this$1:Lcom/vkontakte/android/PostViewActivity$24;

    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PostViewActivity$24$1;)Lcom/vkontakte/android/PostViewActivity$24;
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$24$1;->this$1:Lcom/vkontakte/android/PostViewActivity$24;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 763
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$24$1;->this$1:Lcom/vkontakte/android/PostViewActivity$24;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity$24;->access$0(Lcom/vkontakte/android/PostViewActivity$24;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$22(Lcom/vkontakte/android/PostViewActivity;)V

    .line 764
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$24$1;->this$1:Lcom/vkontakte/android/PostViewActivity$24;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity$24;->access$0(Lcom/vkontakte/android/PostViewActivity$24;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$13(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/PostViewActivity$24$1$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PostViewActivity$24$1$1;-><init>(Lcom/vkontakte/android/PostViewActivity$24$1;)V

    .line 766
    const-wide/16 v2, 0xc8

    .line 764
    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 767
    return-void
.end method
