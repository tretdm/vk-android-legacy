.class Lcom/vkontakte/android/FriendsActivity$3;
.super Ljava/lang/Object;
.source "FriendsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FriendsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FriendsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FriendsActivity$3;->this$0:Lcom/vkontakte/android/FriendsActivity;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity$3;->this$0:Lcom/vkontakte/android/FriendsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/FriendsActivity;->access$2(Lcom/vkontakte/android/FriendsActivity;)V

    .line 127
    return-void
.end method
