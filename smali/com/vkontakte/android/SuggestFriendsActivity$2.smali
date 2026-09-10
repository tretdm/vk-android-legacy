.class Lcom/vkontakte/android/SuggestFriendsActivity$2;
.super Ljava/lang/Object;
.source "SuggestFriendsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SuggestFriendsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SuggestFriendsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SuggestFriendsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SuggestFriendsActivity$2;->this$0:Lcom/vkontakte/android/SuggestFriendsActivity;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/SuggestFriendsActivity$2;->this$0:Lcom/vkontakte/android/SuggestFriendsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SuggestFriendsActivity;->access$1(Lcom/vkontakte/android/SuggestFriendsActivity;)V

    .line 61
    return-void
.end method
