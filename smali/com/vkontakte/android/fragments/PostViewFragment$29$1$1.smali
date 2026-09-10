.class Lcom/vkontakte/android/fragments/PostViewFragment$29$1$1;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment$29$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/fragments/PostViewFragment$29$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment$29$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$29$1$1;->this$2:Lcom/vkontakte/android/fragments/PostViewFragment$29$1;

    .line 1279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$29$1$1;->this$2:Lcom/vkontakte/android/fragments/PostViewFragment$29$1;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment$29$1;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment$29$1;)Lcom/vkontakte/android/fragments/PostViewFragment$29;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment$29;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment$29;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$9(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    const v1, 0x5f5e0ff

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelection(I)V

    .line 1282
    return-void
.end method
