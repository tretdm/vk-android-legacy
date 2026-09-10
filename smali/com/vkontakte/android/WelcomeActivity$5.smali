.class Lcom/vkontakte/android/WelcomeActivity$5;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WelcomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/WelcomeActivity$5;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vkontakte/android/WelcomeActivity$5;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/WelcomeActivity;->finish()V

    .line 94
    return-void
.end method
