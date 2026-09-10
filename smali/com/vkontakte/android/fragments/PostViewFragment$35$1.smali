.class Lcom/vkontakte/android/fragments/PostViewFragment$35$1;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment$35;->success(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/PostViewFragment$35;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment$35;)V
    .locals 0

    .prologue
    .line 1498
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$35$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$35;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$35$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$35;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment$35;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$35$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$35;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/PostViewFragment$35;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$000(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$1700(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V

    .line 1501
    return-void
.end method
