.class Lcom/vkontakte/android/NotificationsView$1;
.super Ljava/lang/Object;
.source "NotificationsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NotificationsView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NotificationsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NotificationsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NotificationsView$1;->this$0:Lcom/vkontakte/android/NotificationsView;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 158
    .local v1, "tag":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 159
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 160
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "tag":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    const-string v3, "ProfileFragment"

    iget-object v2, p0, Lcom/vkontakte/android/NotificationsView$1;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v2}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v3, v0, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 163
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    return-void
.end method
