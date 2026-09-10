.class Lcom/vkontakte/android/fragments/AuthCheckFragment$1;
.super Ljava/lang/Object;
.source "AuthCheckFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/AuthCheckFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/AuthCheckFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AuthCheckFragment;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AuthCheckFragment$1;->this$0:Lcom/vkontakte/android/fragments/AuthCheckFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 60
    return-void
.end method
