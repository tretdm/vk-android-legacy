.class Lcom/vkontakte/android/fragments/StickersDetailsFragment$3$2;
.super Ljava/lang/Object;
.source "StickersDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3$2;->this$1:Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 142
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3$2;->this$1:Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;->access$0(Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;)Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->access$5(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)I

    move-result v1

    invoke-static {v1}, Lcom/vkontakte/android/data/Stickers;->getPackState(I)I

    move-result v0

    .line 143
    .local v0, "state":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3$2;->this$1:Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;->access$0(Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;)Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->access$7(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)V

    .line 145
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3$2;->this$1:Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;->access$0(Lcom/vkontakte/android/fragments/StickersDetailsFragment$3;)Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->access$8(Lcom/vkontakte/android/fragments/StickersDetailsFragment;Z)V

    .line 147
    :cond_0
    return-void
.end method
