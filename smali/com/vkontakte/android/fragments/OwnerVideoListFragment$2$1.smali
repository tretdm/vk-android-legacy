.class Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2$1;
.super Ljava/lang/Object;
.source "OwnerVideoListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2;->onQueryTextChange(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2;

.field final synthetic val$newText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2$1;->val$newText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$402(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 147
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2$1;->val$newText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$600(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;Ljava/lang/String;)V

    .line 148
    return-void
.end method
