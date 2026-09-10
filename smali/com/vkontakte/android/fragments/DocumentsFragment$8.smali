.class Lcom/vkontakte/android/fragments/DocumentsFragment$8;
.super Ljava/lang/Object;
.source "DocumentsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DocumentsFragment;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DocumentsFragment;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$8;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$8;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$1400(Lcom/vkontakte/android/fragments/DocumentsFragment;)Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;->notifyDataSetChanged()V

    .line 395
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$8;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$1500(Lcom/vkontakte/android/fragments/DocumentsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 396
    return-void
.end method
