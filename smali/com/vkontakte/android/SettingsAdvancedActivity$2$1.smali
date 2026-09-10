.class Lcom/vkontakte/android/SettingsAdvancedActivity$2$1;
.super Ljava/lang/Object;
.source "SettingsAdvancedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SettingsAdvancedActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/SettingsAdvancedActivity$2;

.field private final synthetic val$dlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SettingsAdvancedActivity$2;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SettingsAdvancedActivity$2$1;->this$1:Lcom/vkontakte/android/SettingsAdvancedActivity$2;

    iput-object p2, p0, Lcom/vkontakte/android/SettingsAdvancedActivity$2$1;->val$dlg:Landroid/app/ProgressDialog;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/ImageCache;->cacheDir:Ljava/io/File;

    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/SettingsAdvancedActivity$2$1;->val$dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/SettingsAdvancedActivity$2$1;->this$1:Lcom/vkontakte/android/SettingsAdvancedActivity$2;

    invoke-static {v0}, Lcom/vkontakte/android/SettingsAdvancedActivity$2;->access$0(Lcom/vkontakte/android/SettingsAdvancedActivity$2;)Lcom/vkontakte/android/SettingsAdvancedActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/SettingsAdvancedActivity;->access$0(Lcom/vkontakte/android/SettingsAdvancedActivity;)V

    .line 77
    return-void
.end method
