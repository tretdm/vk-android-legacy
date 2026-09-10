.class Lcom/vkontakte/android/ProfileView$9;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileView;-><init>(Landroid/content/Context;ILcom/vkontakte/android/fragments/ProfileFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ProfileView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ProfileView$9;->this$0:Lcom/vkontakte/android/ProfileView;

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 352
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 353
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "owner_id"

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$9;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v2}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 354
    const-string v1, "mode"

    const-string v2, "postponed"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v2, "NewsFragment"

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$9;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v2, v0, v1}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 356
    return-void
.end method
