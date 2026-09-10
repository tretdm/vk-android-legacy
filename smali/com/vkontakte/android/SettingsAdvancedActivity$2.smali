.class Lcom/vkontakte/android/SettingsAdvancedActivity$2;
.super Ljava/lang/Object;
.source "SettingsAdvancedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SettingsAdvancedActivity;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SettingsAdvancedActivity;

.field private final synthetic val$dlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SettingsAdvancedActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SettingsAdvancedActivity$2;->this$0:Lcom/vkontakte/android/SettingsAdvancedActivity;

    iput-object p2, p0, Lcom/vkontakte/android/SettingsAdvancedActivity$2;->val$dlg:Landroid/app/ProgressDialog;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/SettingsAdvancedActivity$2;)Lcom/vkontakte/android/SettingsAdvancedActivity;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/SettingsAdvancedActivity$2;->this$0:Lcom/vkontakte/android/SettingsAdvancedActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 72
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->clear()V

    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/SettingsAdvancedActivity$2;->this$0:Lcom/vkontakte/android/SettingsAdvancedActivity;

    new-instance v1, Lcom/vkontakte/android/SettingsAdvancedActivity$2$1;

    iget-object v2, p0, Lcom/vkontakte/android/SettingsAdvancedActivity$2;->val$dlg:Landroid/app/ProgressDialog;

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/SettingsAdvancedActivity$2$1;-><init>(Lcom/vkontakte/android/SettingsAdvancedActivity$2;Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/SettingsAdvancedActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method
