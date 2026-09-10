.class Lcom/vkontakte/android/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/LoginActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/LoginActivity;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/vkontakte/android/LoginActivity$2;->this$0:Lcom/vkontakte/android/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/LoginActivity$2;->this$0:Lcom/vkontakte/android/LoginActivity;

    invoke-static {v0}, Lcom/vkontakte/android/LoginActivity;->access$000(Lcom/vkontakte/android/LoginActivity;)V

    .line 44
    return-void
.end method
