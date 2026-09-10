.class Lcom/vkontakte/android/ProfileView$28;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileView;->toggleBlacklist()V
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
    iput-object p1, p0, Lcom/vkontakte/android/ProfileView$28;->this$0:Lcom/vkontakte/android/ProfileView;

    .line 1648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$28;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$39(Lcom/vkontakte/android/ProfileView;)V

    .line 1652
    return-void
.end method
