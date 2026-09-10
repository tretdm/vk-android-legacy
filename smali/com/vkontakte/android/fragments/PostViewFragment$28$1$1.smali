.class Lcom/vkontakte/android/fragments/PostViewFragment$28$1$1;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment$28$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/fragments/PostViewFragment$28$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment$28$1;)V
    .locals 0

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$28$1$1;->this$2:Lcom/vkontakte/android/fragments/PostViewFragment$28$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$28$1$1;->this$2:Lcom/vkontakte/android/fragments/PostViewFragment$28$1;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$28;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$1500(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x5f5e0ff

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1153
    return-void
.end method
