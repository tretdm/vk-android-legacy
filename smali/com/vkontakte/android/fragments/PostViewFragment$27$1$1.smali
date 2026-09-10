.class Lcom/vkontakte/android/fragments/PostViewFragment$27$1$1;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment$27$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/fragments/PostViewFragment$27$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment$27$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$27$1$1;->this$2:Lcom/vkontakte/android/fragments/PostViewFragment$27$1;

    .line 1063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$27$1$1;->this$2:Lcom/vkontakte/android/fragments/PostViewFragment$27$1;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment$27$1;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment$27$1;)Lcom/vkontakte/android/fragments/PostViewFragment$27;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment$27;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment$27;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$10(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->scrollDown()V

    .line 1065
    return-void
.end method
