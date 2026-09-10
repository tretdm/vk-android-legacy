.class Lcom/vkontakte/android/BlacklistActivity$1;
.super Ljava/lang/Object;
.source "BlacklistActivity.java"

# interfaces
.implements Lcom/vkontakte/android/EditableUserListView$OnUserRemovedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/BlacklistActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/BlacklistActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BlacklistActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/BlacklistActivity$1;->this$0:Lcom/vkontakte/android/BlacklistActivity;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserRemoved(Lcom/vkontakte/android/UserProfile;)V
    .locals 1
    .param p1, "user"    # Lcom/vkontakte/android/UserProfile;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vkontakte/android/BlacklistActivity$1;->this$0:Lcom/vkontakte/android/BlacklistActivity;

    invoke-static {v0, p1}, Lcom/vkontakte/android/BlacklistActivity;->access$0(Lcom/vkontakte/android/BlacklistActivity;Lcom/vkontakte/android/UserProfile;)V

    .line 23
    return-void
.end method
