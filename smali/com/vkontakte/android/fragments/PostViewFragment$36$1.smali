.class Lcom/vkontakte/android/fragments/PostViewFragment$36$1;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment$36;->success(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/PostViewFragment$36;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment$36;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$36$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$36;

    .line 1668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$36$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$36;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment$36;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment$36;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$36$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$36;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment$36;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment$36;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$21(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V

    .line 1671
    return-void
.end method
