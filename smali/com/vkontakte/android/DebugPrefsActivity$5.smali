.class Lcom/vkontakte/android/DebugPrefsActivity$5;
.super Ljava/lang/Object;
.source "DebugPrefsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DebugPrefsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/DebugPrefsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DebugPrefsActivity;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/vkontakte/android/DebugPrefsActivity$5;->this$0:Lcom/vkontakte/android/DebugPrefsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vkontakte/android/DebugPrefsActivity$5;->this$0:Lcom/vkontakte/android/DebugPrefsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/DebugPrefsActivity;->access$000(Lcom/vkontakte/android/DebugPrefsActivity;)V

    .line 108
    const/4 v0, 0x1

    return v0
.end method
