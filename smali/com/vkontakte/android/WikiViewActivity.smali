.class public Lcom/vkontakte/android/WikiViewActivity;
.super Landroid/app/Activity;
.source "WikiViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/WikiViewActivity$WebCallback;,
        Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;,
        Lcom/vkontakte/android/WikiViewActivity$WebChrome;,
        Lcom/vkontakte/android/WikiViewActivity$WebClient;
    }
.end annotation


# instance fields
.field private curMeta:Landroid/os/Bundle;

.field private history:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private injectedScript:Z

.field private isLoaded:Z

.field private progress:Landroid/widget/ProgressBar;

.field private req:Lcom/vkontakte/android/APIRequest;

.field private shareActionProvider:Landroid/widget/ShareActionProvider;

.field private template:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/WikiViewActivity;->history:Ljava/util/ArrayList;

    .line 38
    iput-boolean v1, p0, Lcom/vkontakte/android/WikiViewActivity;->isLoaded:Z

    .line 42
    iput-boolean v1, p0, Lcom/vkontakte/android/WikiViewActivity;->injectedScript:Z

    .line 450
    return-void
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/WikiViewActivity;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/WikiViewActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/WikiViewActivity;->loadPage(IIZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/vkontakte/android/WikiViewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/WikiViewActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vkontakte/android/WikiViewActivity;->injectScript()V

    return-void
.end method

.method static synthetic access$1200(Lcom/vkontakte/android/WikiViewActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/WikiViewActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vkontakte/android/WikiViewActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/WikiViewActivity;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/vkontakte/android/WikiViewActivity;->injectedScript:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/vkontakte/android/WikiViewActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/WikiViewActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/vkontakte/android/WikiViewActivity;->injectedScript:Z

    return p1
.end method

.method static synthetic access$302(Lcom/vkontakte/android/WikiViewActivity;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/WikiViewActivity;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/vkontakte/android/WikiViewActivity;->curMeta:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$400(Lcom/vkontakte/android/WikiViewActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/WikiViewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/vkontakte/android/WikiViewActivity;->displayPage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/vkontakte/android/WikiViewActivity;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/WikiViewActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/WikiViewActivity;->pushHistory(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$602(Lcom/vkontakte/android/WikiViewActivity;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/WikiViewActivity;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/vkontakte/android/WikiViewActivity;->req:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$700(Lcom/vkontakte/android/WikiViewActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/WikiViewActivity;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/vkontakte/android/WikiViewActivity;->showError(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/vkontakte/android/WikiViewActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/WikiViewActivity;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/vkontakte/android/WikiViewActivity;->isLoaded:Z

    return v0
.end method

.method static synthetic access$900(Lcom/vkontakte/android/WikiViewActivity;ILjava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/WikiViewActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/WikiViewActivity;->loadPage(ILjava/lang/String;Z)V

    return-void
.end method

.method private displayPage(Ljava/lang/String;)V
    .locals 6
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 319
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/WikiViewActivity;->isLoaded:Z

    .line 351
    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "site"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/vkontakte/android/WikiViewActivity;->shareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v1, :cond_0

    .line 353
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.TEXT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/vkontakte/android/WikiViewActivity;->curMeta:Landroid/os/Bundle;

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/WikiViewActivity;->curMeta:Landroid/os/Bundle;

    const-string v4, "url"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    iget-object v1, p0, Lcom/vkontakte/android/WikiViewActivity;->shareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v1, v0}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 360
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iput-boolean v5, p0, Lcom/vkontakte/android/WikiViewActivity;->injectedScript:Z

    .line 361
    iget-object v1, p0, Lcom/vkontakte/android/WikiViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method private injectScript()V
    .locals 3

    .prologue
    .line 285
    const-string v0, "javascript:{var phts=document.getElementsByClassName(\'al_photo\');var phUrls=[];for(var i=0;i<phts.length;i++){phUrls.push(phts[i].getElementsByTagName(\'img\')[0].attributes[\'data-src_big\'].value);phts[i].setAttribute(\'data-index\', i);phts[i].onclick=function(){window.vknative.openPhotos(phUrls, parseInt(this.attributes[\'data-index\'].value));return false;}}var auds={oids:[], aids:[], durations:[], artists:[], titles:[], urls:[]};var adivs=document.getElementsByClassName(\'audio_item\');for(var i=0;i<adivs.length;i++){auds.oids.push(parseInt(adivs[i].attributes[\'data-id\'].value.split(\'_\')[0]));auds.aids.push(parseInt(adivs[i].attributes[\'data-id\'].value.split(\'_\')[1]));auds.durations.push(parseInt(adivs[i].getElementsByClassName(\'ai_dur\')[0].attributes[\'data-dur\'].value));auds.artists.push(adivs[i].getElementsByClassName(\'ai_artist\')[0].innerText);auds.titles.push(adivs[i].getElementsByClassName(\'ai_title\')[0].innerText);auds.urls.push(adivs[i].getElementsByTagName(\'input\')[0].value);adivs[i].setAttribute(\'data-index\', i);adivs[i].onclick=function(){window.vknative.playAudio(auds.oids, auds.aids, auds.artists, auds.titles, auds.urls, auds.durations, parseInt(this.attributes[\'data-index\'].value));return false;}}void(0);};"

    .line 313
    .local v0, "script":Ljava/lang/String;
    const-string v1, "vk"

    const-string v2, "Injecting script!"

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/vkontakte/android/WikiViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method private loadNote(II)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "nid"    # I

    .prologue
    .line 234
    new-instance v0, Lcom/vkontakte/android/api/NotesGetById;

    invoke-direct {v0, p1, p2}, Lcom/vkontakte/android/api/NotesGetById;-><init>(II)V

    new-instance v1, Lcom/vkontakte/android/WikiViewActivity$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/WikiViewActivity$6;-><init>(Lcom/vkontakte/android/WikiViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/NotesGetById;->setCallback(Lcom/vkontakte/android/api/NotesGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/WikiViewActivity;->req:Lcom/vkontakte/android/APIRequest;

    .line 251
    return-void
.end method

.method private loadPage()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "oid"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/vkontakte/android/api/PagesGetHTML;

    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/PagesGetHTML;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vkontakte/android/WikiViewActivity$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/WikiViewActivity$1;-><init>(Lcom/vkontakte/android/WikiViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PagesGetHTML;->setCallback(Lcom/vkontakte/android/api/PagesGetHTML$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/WikiViewActivity;->req:Lcom/vkontakte/android/APIRequest;

    .line 181
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pid"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 138
    new-instance v0, Lcom/vkontakte/android/api/PagesGetHTML;

    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "oid"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/PagesGetHTML;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/vkontakte/android/WikiViewActivity$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/WikiViewActivity$2;-><init>(Lcom/vkontakte/android/WikiViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PagesGetHTML;->setCallback(Lcom/vkontakte/android/api/PagesGetHTML$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/WikiViewActivity;->req:Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 159
    :cond_1
    new-instance v0, Lcom/vkontakte/android/api/PagesGetHTML;

    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "oid"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "pid"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "site"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/PagesGetHTML;-><init>(IIZ)V

    new-instance v1, Lcom/vkontakte/android/WikiViewActivity$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/WikiViewActivity$3;-><init>(Lcom/vkontakte/android/WikiViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PagesGetHTML;->setCallback(Lcom/vkontakte/android/api/PagesGetHTML$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/WikiViewActivity;->req:Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method private loadPage(IIZ)V
    .locals 4
    .param p1, "oid"    # I
    .param p2, "id"    # I
    .param p3, "useHistory"    # Z

    .prologue
    .line 210
    new-instance v0, Lcom/vkontakte/android/api/PagesGetHTML;

    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "site"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/vkontakte/android/api/PagesGetHTML;-><init>(IIZ)V

    new-instance v1, Lcom/vkontakte/android/WikiViewActivity$5;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/vkontakte/android/WikiViewActivity$5;-><init>(Lcom/vkontakte/android/WikiViewActivity;ZII)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PagesGetHTML;->setCallback(Lcom/vkontakte/android/api/PagesGetHTML$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/WikiViewActivity;->req:Lcom/vkontakte/android/APIRequest;

    .line 231
    return-void
.end method

.method private loadPage(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "useHistory"    # Z

    .prologue
    .line 185
    new-instance v0, Lcom/vkontakte/android/api/PagesGetHTML;

    invoke-direct {v0, p1, p2}, Lcom/vkontakte/android/api/PagesGetHTML;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/vkontakte/android/WikiViewActivity$4;

    invoke-direct {v1, p0, p3, p1}, Lcom/vkontakte/android/WikiViewActivity$4;-><init>(Lcom/vkontakte/android/WikiViewActivity;ZI)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PagesGetHTML;->setCallback(Lcom/vkontakte/android/api/PagesGetHTML$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/WikiViewActivity;->req:Lcom/vkontakte/android/APIRequest;

    .line 206
    return-void
.end method

.method private pushHistory(IILjava/lang/String;)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "pid"    # I
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 413
    new-instance v0, Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;-><init>(Lcom/vkontakte/android/WikiViewActivity$1;)V

    .line 414
    .local v0, "he":Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;
    iput p1, v0, Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;->oid:I

    .line 415
    iput p2, v0, Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;->pid:I

    .line 416
    iput-object p3, v0, Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;->title:Ljava/lang/String;

    .line 417
    iget-object v1, p0, Lcom/vkontakte/android/WikiViewActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    return-void
.end method

.method private showError(I)V
    .locals 4
    .param p1, "code"    # I

    .prologue
    .line 256
    const v0, 0x7f0d00ce

    .line 257
    .local v0, "msg":I
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    .line 258
    const v0, 0x7f0d037b

    .line 263
    :cond_0
    :goto_0
    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d00d0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d01cd

    new-instance v3, Lcom/vkontakte/android/WikiViewActivity$8;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/WikiViewActivity$8;-><init>(Lcom/vkontakte/android/WikiViewActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/WikiViewActivity$7;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/WikiViewActivity$7;-><init>(Lcom/vkontakte/android/WikiViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_1
    return-void

    .line 259
    :cond_1
    const/16 v1, 0xf

    if-ne p1, v1, :cond_0

    .line 260
    const v0, 0x7f0d037a

    goto :goto_0

    .line 281
    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 421
    iget-object v1, p0, Lcom/vkontakte/android/WikiViewActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 422
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 443
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/WikiViewActivity;->history:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkontakte/android/WikiViewActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;

    .line 427
    .local v0, "e":Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;
    iget-object v1, p0, Lcom/vkontakte/android/WikiViewActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 428
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 432
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/WikiViewActivity;->history:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkontakte/android/WikiViewActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "e":Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;
    check-cast v0, Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;

    .line 433
    .restart local v0    # "e":Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;
    iget-object v1, v0, Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;->title:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 434
    iget v1, v0, Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;->oid:I

    iget v2, v0, Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;->pid:I

    invoke-direct {p0, v1, v2, v3}, Lcom/vkontakte/android/WikiViewActivity;->loadPage(IIZ)V

    goto :goto_0

    .line 437
    :cond_2
    iget v1, v0, Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;->pid:I

    if-nez v1, :cond_3

    .line 438
    iget v1, v0, Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;->oid:I

    iget-object v2, v0, Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;->title:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/vkontakte/android/WikiViewActivity;->loadPage(ILjava/lang/String;Z)V

    goto :goto_0

    .line 441
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x42200000    # 40.0f

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/WikiViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/WikiViewActivity;->requestWindowFeature(I)Z

    .line 49
    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 51
    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/WikiViewActivity;->webView:Landroid/webkit/WebView;

    .line 52
    iget-object v3, p0, Lcom/vkontakte/android/WikiViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 53
    iget-object v3, p0, Lcom/vkontakte/android/WikiViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v4, Lcom/vkontakte/android/WikiViewActivity$WebClient;

    invoke-direct {v4, p0, v5}, Lcom/vkontakte/android/WikiViewActivity$WebClient;-><init>(Lcom/vkontakte/android/WikiViewActivity;Lcom/vkontakte/android/WikiViewActivity$1;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 54
    iget-object v3, p0, Lcom/vkontakte/android/WikiViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v4, Lcom/vkontakte/android/WikiViewActivity$WebChrome;

    invoke-direct {v4, p0, v5}, Lcom/vkontakte/android/WikiViewActivity$WebChrome;-><init>(Lcom/vkontakte/android/WikiViewActivity;Lcom/vkontakte/android/WikiViewActivity$1;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 55
    iget-object v3, p0, Lcom/vkontakte/android/WikiViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v4, Lcom/vkontakte/android/WikiViewActivity$WebCallback;

    invoke-direct {v4, p0, v5}, Lcom/vkontakte/android/WikiViewActivity$WebCallback;-><init>(Lcom/vkontakte/android/WikiViewActivity;Lcom/vkontakte/android/WikiViewActivity$1;)V

    const-string v5, "vknative"

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 57
    .local v2, "wrap":Landroid/widget/FrameLayout;
    iget-object v3, p0, Lcom/vkontakte/android/WikiViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 59
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/WikiViewActivity;->progress:Landroid/widget/ProgressBar;

    .line 60
    iget-object v3, p0, Lcom/vkontakte/android/WikiViewActivity;->progress:Landroid/widget/ProgressBar;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    const/16 v7, 0x11

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/WikiViewActivity;->setContentView(Landroid/view/View;)V

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "site"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "wiki_template_article.htm"

    :goto_0
    invoke-virtual {v4, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 66
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    .line 67
    .local v0, "buf":[B
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 68
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v3, p0, Lcom/vkontakte/android/WikiViewActivity;->template:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v0    # "buf":[B
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_1
    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "nid"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "oid"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "nid"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/vkontakte/android/WikiViewActivity;->loadNote(II)V

    .line 76
    :goto_2
    return-void

    .line 65
    :cond_0
    :try_start_1
    const-string v3, "wiki_template.htm"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 74
    :cond_1
    invoke-direct {p0}, Lcom/vkontakte/android/WikiViewActivity;->loadPage()V

    goto :goto_2

    .line 69
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "site"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const v1, 0x7f080009

    const-string v2, ""

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 89
    .local v0, "item":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 90
    new-instance v1, Landroid/widget/ShareActionProvider;

    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ShareActionProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/WikiViewActivity;->shareActionProvider:Landroid/widget/ShareActionProvider;

    .line 91
    iget-object v1, p0, Lcom/vkontakte/android/WikiViewActivity;->shareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    .line 93
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 108
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity;->req:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity;->req:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/WikiViewActivity;->req:Lcom/vkontakte/android/APIRequest;

    .line 112
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 79
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->finish()V

    .line 81
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 98
    invoke-static {}, Lcom/vkontakte/android/AppStateTracker;->onActivityPaused()V

    .line 99
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 103
    invoke-static {p0}, Lcom/vkontakte/android/AppStateTracker;->onActivityResumed(Landroid/app/Activity;)V

    .line 104
    return-void
.end method
